//
//  AnswerView.swift
//   Testomatika
//
//  Created by Admin on 05.06.2021.
//

import UIKit

protocol AnswerViewDelegate: AnyObject {
    func didTapView(_ view: AnswerView)
}

class AnswerView: UIView {

    let textLabel = UILabel()
    
    weak var delegate: AnswerViewDelegate?
    
    var isSelected: Bool = false {
        didSet {
            if isSelected {
                gradientLayer.isHidden = false
                textLabel.textColor = .white
                backgroundColor = .clear
            } else {
                gradientLayer.isHidden = true
                textLabel.textColor = .black.withAlphaComponent(0.8)
                backgroundColor = .white
            }
        }
    }
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    @objc
    private func tapAction(_ gesture: UITapGestureRecognizer) {
        guard let view = gesture.view as? AnswerView else { return }
        delegate?.didTapView(view)
    }
    
    private func setupUI() {
        setupTextLabel()

        gradientLayer.isHidden = true
        gradientLayer.cornerRadius = 15
        gradientLayer.cornerCurve = .continuous
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.colors = [
            UIColor(red: 0.988, green: 0.733, blue: 0.2, alpha: 1).cgColor,
            UIColor(red: 0.918, green: 0.498, blue: 0.11, alpha: 1).cgColor
        ]
        
        backgroundColor = .white
        isUserInteractionEnabled = true
        layer.cornerRadius = 15
        layer.cornerCurve = .continuous
        layer.insertSublayer(gradientLayer, at: 0)
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.20
        layer.shadowOffset = CGSize(width: 5, height: 10)
        layer.shadowRadius = 10
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        addGestureRecognizer(tap)
    }
    
    private func setupTextLabel() {
        addSubview(textLabel)
        
        textLabel.textColor = .black.withAlphaComponent(0.8)
        textLabel.numberOfLines = 0
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.font = Roboto.fetchFont(.medium, with: 18)
        
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            textLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
}
