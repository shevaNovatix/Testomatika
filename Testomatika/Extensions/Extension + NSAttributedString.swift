//
//  Extension + NSAttributedString.swift
//  Testomatika
//
//  Created by Admin on 01.07.2021.
//

import UIKit


extension NSAttributedString {
    
    static func textViewText() -> NSAttributedString {
        let maskText = "Terms of Service"
        let privacyText = "Privacy Policy"
        
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        
        let font = Roboto.fetchFont(.regular, with: 15)
        
        let color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        let attributes: [NSAttributedString.Key: Any] = [.font: font,
                                                         .foregroundColor: color]
        
        let termsAttributes: [NSAttributedString.Key: Any] = [.font: font,
                                                              .underlineStyle: NSUnderlineStyle.single.rawValue,
                                                              .paragraphStyle: paragraph,
                                                              .link: URL(string: "https://testomatika.app/terms.html")!]
        
        let privacyAttributes: [NSAttributedString.Key: Any] = [.font: font,
                                                                .underlineStyle: NSUnderlineStyle.single.rawValue,
                                                                .link: URL(string: "https://testomatika.app/privacyPolicy.html")!]
        
        let baseText = "Terms of Service and Privacy Policy"
        
        let termsAttributedText = NSMutableAttributedString(string: baseText, attributes: attributes)
        
        let rangeOfTerms = NSString(string: baseText).range(of: maskText)
        termsAttributedText.setAttributes(termsAttributes, range: rangeOfTerms)
        
        let rangeOfPrivacy = NSString(string: baseText).range(of: privacyText)
        termsAttributedText.setAttributes(privacyAttributes, range: rangeOfPrivacy)
        
        return termsAttributedText
    }
    
    static func linkAttributes() -> [NSAttributedString.Key: Any] {
        let color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return [.font: Roboto.fetchFont(.regular, with: 15), .foregroundColor: color]
    }
}
