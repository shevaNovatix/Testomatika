//
//  MainButton.swift
//   Testomatika
//
//  Created by Admin on 07.06.2021.
//

import UIKit

class MainButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    private func setupButton() {
        titleLabel?.font = Roboto.fetchFont(.medium, 20)
        layer.cornerRadius = 15
        layer.cornerCurve = .continuous
        setTitleColor(.white, for: .normal)
        backgroundColor = UIColor.black
    }
}
