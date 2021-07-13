//
//  ResizableLayout.swift
//  BasicCollectionAnimationProject
//

import UIKit

struct ContextCellConstants {
    static var featuredHeight: CGFloat {
        UIDevice.current.userInterfaceIdiom == .pad ? 560 : 280
    }
    static var standardHeight: CGFloat {
        UIDevice.current.userInterfaceIdiom == .pad ? 300 : 120
    }
}

class ResizableLayout: UICollectionViewLayout {
	let dragOffset: CGFloat = ContextCellConstants.featuredHeight - ContextCellConstants.standardHeight
	
	var cacheAttributes = [UICollectionViewLayoutAttributes]()
	
	var featuredItemIndex: Int {
		max(0, Int(collectionView!.contentOffset.y / dragOffset))
	}
	// 0...1
	var percentageOffset: CGFloat {
		collectionView!.contentOffset.y / dragOffset - CGFloat(featuredItemIndex)
	}
	
	var width: CGFloat {
		collectionView!.bounds.width
	}
	
	var height: CGFloat {
		collectionView!.bounds.height
	}
	
	var numberOfItems: Int {
		collectionView!.numberOfItems(inSection: 0)
	}
}

extension ResizableLayout {
	override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
		true
	}
	
	override var collectionViewContentSize: CGSize {
		CGSize(
			width: width,
			height: CGFloat(numberOfItems) * dragOffset + height - dragOffset
		)
	}
	
	override func prepare() {
		cacheAttributes.removeAll()
		
		var frame: CGRect = .zero
		var y: CGFloat = 0
		
		for index in 0..<numberOfItems {
			let path = IndexPath(item: index, section: 0)
			let attributes = UICollectionViewLayoutAttributes(forCellWith: path)
			
			var height = ContextCellConstants.standardHeight
			
			// featured
			if path.item == featuredItemIndex {
				y = collectionView!.contentOffset.y - ContextCellConstants.standardHeight * percentageOffset
				height = ContextCellConstants.featuredHeight
			} else if path.item == (featuredItemIndex + 1) {
				// featuredNext
				let maxY = y + ContextCellConstants.standardHeight
				
				height = ContextCellConstants.standardHeight + max(dragOffset * percentageOffset, 0)
				y = maxY - height
			}
			
			frame = CGRect(x: 0, y: y, width: width, height: height)
			
			attributes.frame = frame
			
			attributes.zIndex = index
			
			cacheAttributes.append(attributes)
			y = frame.maxY
		}
	}
	
	override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
		var resultAttributes = [UICollectionViewLayoutAttributes]()
		
		for attributes in cacheAttributes {
			if attributes.frame.intersects(rect) {
				resultAttributes.append(attributes)
			}
		}
		
		return resultAttributes
	}
	
	override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
		let itemIndex = round(proposedContentOffset.y / dragOffset)
		let yOffset = itemIndex * dragOffset
		return CGPoint(x: 0, y: yOffset)
	}
}
