//
//  Extension + UIViewController.swift
//  Lovle
//
//  Created by Admin on 20.04.2021.
//

import UIKit
import JGProgressHUD
import UIWindowTransitions
import StoreKit

extension UIViewController {
     
    func setMainViewController() {
        let options = UIWindow.TransitionOptions()
        options.duration = 0.2
        options.direction = .toBottom
        
        let quizzesCVC = UIStoryboard.main.instantiate(QuizzesCollectionViewController.self)
        UIApplication.shared.windows.first?.set(rootViewController: quizzesCVC, options: options)
    }
    
    func setStartViewController() {
        let options = UIWindow.TransitionOptions()
        options.duration = 0.2
        options.direction = .toTop
        
        let nc = UIStoryboard.main.instantiate(NavigationController.self)
        UIApplication.shared.windows.first?.set(rootViewController: nc, options: options)
    }
    
    func priceForString(product: SKProduct) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = product.priceLocale
        return numberFormatter.string(from: product.price) ?? ""
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func addBackgroundImageView(_ name: String?) {
        let backgroundImage = UIImage(named: name ?? "")
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = backgroundImage
        backgroundImageView.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImageView, at: 0)
    }
}
