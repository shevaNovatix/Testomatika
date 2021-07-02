//
//  Extension + UIView.swift
//   TestomatikaTest
//
//  Created by Admin on 20.06.2021.
//

import UIKit

extension UIView {
    func addShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 4.0
        layer.shadowOpacity = 1.0
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.masksToBounds = false
    }
}
