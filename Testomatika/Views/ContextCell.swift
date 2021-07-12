//
//  ContextCell.swift
//  Testomatika
//
//  Created by Admin on 12.06.2021.
//

import UIKit

class ContextCell: UICollectionViewCell {
    
	@IBOutlet weak var backgroundImageView: UIImageView!
	@IBOutlet weak var shadowView: UIView!
	@IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var comingSoonImageView: UIImageView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
	static let id = String(describing: ContextCell.self)
	
	var quiz: Quiz? {
		didSet {
			if let quiz = quiz {
                
                backgroundImageView.image = UIImage(named: quiz.backgroundItem)
				titleLabel.text = quiz.title
                titleLabel.font = Roboto.fetchFontForCurrentDevice()
                titleLabel.layer.shadowColor = UIColor.black.cgColor
                titleLabel.layer.shadowRadius = 2
                titleLabel.layer.shadowOpacity = 1.0
                titleLabel.layer.shadowOffset = CGSize(width: 4, height: 4)
                titleLabel.layer.masksToBounds = false
                
                if quiz.isOpen {
                    comingSoonImageView.isHidden = true
                } else {
                    comingSoonImageView.isHidden = false
                }
			}
		}
	}
	
	override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
		super.apply(layoutAttributes)
		let dragOffset = ContextCellConstants.featuredHeight - ContextCellConstants.standardHeight
		
		let delta = 1 - (ContextCellConstants.featuredHeight - frame.height) / dragOffset
		
		let minAlpha: CGFloat = 0.3
		let maxAlpha: CGFloat = 0.75
		
		let scale = max(delta, 0.5)
		titleLabel.transform = CGAffineTransform(scaleX: scale, y: scale)
//        comingSoonImageView.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
		shadowView.alpha = maxAlpha - delta * (maxAlpha - minAlpha)
	}
}
