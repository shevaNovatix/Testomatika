//
//  StartViewController.swift
//   Testomatika
//
//  Created by Admin on 07.06.2021.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nextButton: MainButton! {
        didSet {
            nextButton.backgroundColor = .black.withAlphaComponent(0.3)
        }
    }
    
    
    private var quiz: Quiz? {
        UserDefaultsManager.shared.currentQuiz
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let quizVC = segue.destination as? QuizViewController else { return }
        quizVC.quiz = quiz
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackgroundImageView(quiz?.backgroundView)
        
        descriptionLabel.font = Roboto.fetchFont(.medium, 20)
        descriptionLabel.textColor = .black
        descriptionLabel.text = self.quiz?.description
    }
    
    @IBAction func dismissAction(_ sender: UIBarButtonItem) {
        setMainViewController()
    }
}
