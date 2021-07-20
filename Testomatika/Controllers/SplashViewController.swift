//
//  SplashViewController.swift
//   TestomatikaTest
//
//  Created by Admin on 16.06.2021.
//

import UIKit
import Firebase

class SplashViewController: MainViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showSpiner()
        
        RemoteConfigService.shared.fetchCloudValues { [weak self] in
            guard let self = self else { return }
            if RemoteConfigService.shared.fetchComplete {
                DispatchQueue.main.async {
                    self.hideSpiner()
                    self.showStartVC()
                }
            } else {
                self.hideSpiner()
                self.setMainViewController()
            }
        }
    }
    
    func showStartVC() {
        let index = RemoteConfigService.shared.int(forKey: .startVC)
        Analytics.logEvent("Quiz_\(index)", parameters: nil)
        
        if index == 00 {
            setMainViewController()
            return
        }
        
        let quiz = QuizStorage.quizzes[index]
        UserDefaultsManager.shared.currentQuiz = quiz
        setStartViewController()
    }
}
