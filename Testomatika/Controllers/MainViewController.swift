//
//  MainViewController.swift
//   TestomatikaTest
//
//  Created by Admin on 25.06.2021.
//

import UIKit
import JGProgressHUD

class MainViewController: UIViewController {
    
    private var backgroundImageView: UIImageView!
    private var spiner: JGProgressHUD!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSpiner()
        
        let imageString = UserDefaultsManager.shared.currentQuiz?.backgroundView ?? ""
        let image = UIImage(named: imageString)
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = image
        backgroundImageView.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImageView, at: 0)
    }
    
    func showSpiner() {
        spiner.show(in: view)
    }
    
    func hideSpiner() {
        DispatchQueue.main.async {
            self.spiner.dismiss()
        }
    }
    
    private func configureSpiner() {
        spiner = JGProgressHUD(style: .light)
        spiner.textLabel.text = "Please wait..."
    }
}
