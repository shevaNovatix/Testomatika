//
//  ProgressBar.swift
//  WhiteAppTest
//
//  Created by Admin on 02.06.2021.
//

import UIKit

class ProgressBar: UIView {
    
    var color: UIColor? = .systemPink
    
    let textLayer = CATextLayer()
    
    var progress: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    lazy var progressLayer: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.colors = [
            UIColor(red: 0.988, green: 0.733, blue: 0.2, alpha: 1).cgColor,
            UIColor(red: 0.918, green: 0.498, blue: 0.11, alpha: 1).cgColor
        ]
        return gradient
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black.withAlphaComponent(0.2)
        layer.addSublayer(progressLayer)
        layer.addSublayer(textLayer)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .black.withAlphaComponent(0.2)
        layer.addSublayer(progressLayer)
        layer.addSublayer(textLayer)
    }
    
    override func draw(_ rect: CGRect) {
        let cornerRadius = rect.height * 0.5
        
        let backgroundMask = CAShapeLayer()
        backgroundMask.path = UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius).cgPath
        layer.mask = backgroundMask
        
        let value: CGFloat = 10
        let progressLayerHeight = rect.height - value
        let progressLayerWidht = (rect.width * progress) - value
        
        
        let origin = CGPoint(x: value / 2, y: value / 2)
        let progressRect = CGRect(
            origin: origin,
            size: CGSize(width: progressLayerWidht, height: progressLayerHeight))
        
        progressLayer.frame = progressRect
        progressLayer.cornerRadius = progressLayerHeight / 2
        progressLayer.backgroundColor = color?.cgColor
        
        let fontSize: CGFloat = 20
        textLayer.font = Roboto.fetchFont(.bold, fontSize)
        textLayer.fontSize = fontSize
        textLayer.frame = CGRect(x: layer.bounds.origin.x,
                                 y: ((layer.bounds.height - fontSize) / 2) - 2,
                                 width: layer.bounds.width,
                                 height: layer.bounds.height)
        
        textLayer.alignmentMode = .center
        
        textLayer.foregroundColor = UIColor.white.cgColor
        textLayer.contentsScale = UIScreen.main.scale
        layer.addSublayer(textLayer)
    }
}
