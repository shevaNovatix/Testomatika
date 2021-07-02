//
//  Extension + UIStoryboard.swift
//   TestomatikaTest
//
//  Created by Admin on 17.06.2021.
//

import UIKit

extension UIStoryboard {
    
    static var main: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    func instantiate<T: UIViewController>(_ type: T.Type) -> T {
        guard let vc = instantiateViewController(withIdentifier: String(describing: type.self)) as? T else {
            fatalError("Could not instantiate view controller \(T.self)") }
        return vc
    }
}
