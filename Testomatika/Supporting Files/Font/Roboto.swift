//
//  BrandonGrotesque.swift
//  WhiteAppTest
//
//  Created by Admin on 28.05.2021.
//

import UIKit

struct Roboto {
    
    static var device = UIDevice.current.userInterfaceIdiom
    
    static func fetchFont(_ style: Style, _ size: CGFloat) -> UIFont {
        let name = String(describing: Roboto.self)
        let first = String(style.rawValue.prefix(1)).capitalized
        let newStyle = first + String(style.rawValue.dropFirst())
        let fullName = "\(name)-\(newStyle)"
        return UIFont(name: fullName, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func fetchFont(_ style: Style, with size: CGFloat) -> UIFont {
        device == .pad ? Roboto.fetchFont(style, size * 2) : Roboto.fetchFont(style, size)
    }
    
    enum Style: String {
        case black
        case blackItalic
        case bold
        case boldItalic
        case light
        case lightItalic
        case medium
        case mediumItalic
        case regular
        case italic
        case thin
        case thinItalic
    }
}
