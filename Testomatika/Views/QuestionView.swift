//
//  QuestionView.swift
//   Testomatika
//
//  Created by Admin on 03.06.2021.
//

import UIKit

class QuestionView: UIView {
    
    let questionLabel = UILabel()
    
    var views = [AnswerView]()
    
    init(frame: CGRect, views count: Int) {
        super.init(frame: frame)
        
        questionLabel.numberOfLines = 0
        questionLabel.font = UIDevice.current.userInterfaceIdiom == .pad ? Roboto.fetchFont(.bold, 44) : Roboto.fetchFont(.bold, 22)
        questionLabel.textAlignment = .center
        questionLabel.textColor = .white
        questionLabel.addShadow()
        
        backgroundColor = .clear
        
        for _ in 0..<count {
            views.append(AnswerView())
        }
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(question: Question) {
        questionLabel.text = question.text
        
//        if question.answers.count != views.count {
//            views.last?.isHidden = true
//        }
        
        var index = 0
        
        for (view, answer) in zip(views, question.answers) {
            view.textLabel.text = answer.text
            view.tag = index
            index += 1
        }
    }
    
    private func setupUI() {
        let constant: CGFloat = 20
        
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 10
        
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(questionLabel)
        addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: constant),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -constant),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
        
            questionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: constant),
            questionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -constant),
            questionLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -constant * 1.5),
        ])
    }
    
    func showAnimation() {
        views.forEach {
            $0.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            questionLabel.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }
        
        alpha = 0
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            animations: {
                self.alpha = 1
                self.views.forEach {
                    $0.transform = CGAffineTransform(scaleX: 1, y: 1)
                    self.questionLabel.transform = CGAffineTransform(scaleX: 1, y: 1)
                }
            })
    }
}
