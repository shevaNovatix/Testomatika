//
//  DeviceSpecific.swift
//  Testomatika
//
//  Created by Admin on 06.07.2021.
//

import UIKit

enum DeviceSpecific {
    case iPhoneSE
    case iphoneSE2
    case iPhone8Plus
    case iPhone11
    case iPhone11Pro
    case iphone11ProMax
    case Unknown
}

extension UIImage {
    

    private static func currentDeviceSpecific() -> DeviceSpecific {
        
        let size = UIScreen.main.bounds.size
        let height = Float(size.height)
        let width = Float(size.width)
        let pixelDimension = Int(fmaxf(height, width))
        
        switch pixelDimension {
        case 568:
            return .iPhoneSE
        case 667:
            return .iphoneSE2
        case 736:
            return .iPhone8Plus
        case 896:
            return .iPhone11
        case 812:
            return .iPhone11Pro
        default:
            return .Unknown
        }
    }
}

