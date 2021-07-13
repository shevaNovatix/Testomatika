//
//  NavigationTitleView.swift
//   TestomatikaTest
//
//  Created by Admin on 08.06.2021.
//

import UIKit

class NavigationTitleView: UIView {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = Roboto.fetchFontForTitleView()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.addShadow()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTitleLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTitleLabel() {
        addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
