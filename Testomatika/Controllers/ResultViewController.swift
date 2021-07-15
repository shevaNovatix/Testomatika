//
//  ResultViewController.swift
//   Testomatika
//
//  Created by Admin on 03.06.2021.
//

import UIKit

class ResultViewController: UIViewController{
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var backButton: MainButton!
    
    private var gradient: CAGradientLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 30
        contentView.layer.cornerCurve = .continuous
        
        titleLabel.font = Roboto.fetchFont(.bold, 30)
        titleLabel.textColor = .white
        titleLabel.addShadow()
        
        setupUI()
        
        gradient = CAGradientLayer()
        gradient.colors = [
            UIColor.clear.cgColor,
            UIColor.white.cgColor,
            UIColor.white.cgColor,
            UIColor.clear.cgColor
        ]
        gradient.delegate = self
        gradient.locations = [0, 0, 0.9, 1]
        
        textView.layer.mask = gradient
        textView.font = Roboto.fetchFont(.medium, 20)
        
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func dismissAction() {
        setMainViewController()
    }
    
    private func setupUI() {
        guard let quiz = UserDefaultsManager.shared.currentQuiz else { return }
        addBackgroundImageView(quiz.backgroundView)
        
        quiz.responseRanges.forEach { response in
            if response.range.contains(quiz.quizResult) {
                titleLabel.text = response.title
                textView.text = response.description
                return
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateGradient()
    }
    
    private func updateGradient() {
        gradient.frame = CGRect(
            x: 0,
            y: textView.contentOffset.y,
            width: textView.bounds.width,
            height: textView.bounds.height
        )
        
        if textView.contentOffset.y >= textView.contentSize.height - textView.bounds.height - 5 {
            gradient.locations = [0, 0.1, 1, 1]
        } else if textView.contentOffset.y > 0 {
            gradient.locations = [0, 0.1, 0.9, 1]
        } else {
            gradient.locations = [0, 0, 0.9, 1]
        }
    }
}

extension ResultViewController: UITextViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateGradient()
    }
}

extension ResultViewController: CALayerDelegate {
    func action(for layer: CALayer, forKey event: String) -> CAAction? {
        return NSNull()
    }
}
