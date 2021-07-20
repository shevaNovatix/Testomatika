//
//  BigQuizViewController.swift
//  Testomatika
//
//  Created by Admin on 19.07.2021.
//

import UIKit

class BigQuizViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var progressBar: ProgressBar!
    @IBOutlet weak var endQiuzBarButtonItem: UIBarButtonItem!
    
    @IBOutlet weak var previousButton: MainButton!  {
        didSet {
            previousButton.backgroundColor = .black.withAlphaComponent(0.3)
        }
    }
    
    var quiz: Quiz?
    
    private var currentPage = 0
    private var points = 0
    
    private let userDefaults = UserDefaultsManager.shared
    
    private var isScrollForward = true
    
    private var questions = [Question]()
    private var questionsViews = [QuestionView]()
    
    private var progressValue: CGFloat {
        0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previousButton.alpha = 0
        
        questions = quiz?.questions ?? []
        
        progressBar.textLayer.string = "0%"
        progressBar.progress = progressValue
        
        configureNavigationItem()
        setupQuestionsViews()
    }

    @IBAction func dismissAction(_ sender: UIBarButtonItem) {
        setMainViewController()
    }
    
    @IBAction func buttonsAction(_ sender: UIButton) {
        isScrollForward = false
        
        questionsViews[currentPage - 1].showAnimation()
        
        let viewFrame = questionsViews[currentPage].frame
        let xPoint = viewFrame.origin.x - viewFrame.size.width
        scrollView.setContentOffset(CGPoint(x: xPoint, y: 0), animated: true)
    }
    
    private func configureNavigationItem() {
        if !UserDefaultsManager.shared.isSubscription {
            navigationItem.leftBarButtonItem = nil
        }
        
        navigationItem.hidesBackButton = true
        
        let titleView = NavigationTitleView()
        titleView.titleLabel.text = quiz?.title
        navigationItem.titleView = titleView
        navigationItem.titleView?.frame = CGRect(x: 0, y: 0, width: view.frame.width - 40, height: 44)
    }
    
    private func setupQuestionsViews() {
        let insets = UIApplication.shared.windows.first?.safeAreaInsets
        let sum = (insets?.top ?? 0) + (insets?.bottom ?? 0) + (navigationController?.navigationBar.frame.height ?? 0)
        let height = view.frame.height - sum - 80
        
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(questions.count), height: height)

        questions.enumerated().forEach { [weak self] index, question in
            guard let self = self else { return }
            let rect = CGRect(x: self.view.frame.width * CGFloat(index), y: 0, width: self.view.frame.width, height: height)
            let view = QuestionView(frame: rect, views: question.answers.count)
            view.configure(question: question)
            view.views.forEach { $0.delegate = self }
            questionsViews.append(view)
            scrollView.addSubview(view)
        }
    }
}

// MARK: - UIScrollViewDelegate

extension BigQuizViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        currentPage = Int(round(scrollView.contentOffset.x / scrollView.frame.width))
        
        if currentPage != 0 {
            UIView.animate(withDuration: 0.25) { self.previousButton.alpha = 1 }
        } else {
            UIView.animate(withDuration: 0.25) { self.previousButton.alpha = 0 }
        }
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        if isScrollForward {
            progressBar.progress += progressValue
            progressBar.textLayer.string = "\(currentPage)%"
        }
    }
}
    
// MARK: - AnswerViewDelegate

extension BigQuizViewController: AnswerViewDelegate {
    func didTapView(_ view: AnswerView) {
        isScrollForward = true
        
        questionsViews[currentPage].views.forEach {
            if $0.isSelected {
                $0.isSelected = false
            }
        }
        
        view.isSelected = true
        
        if currentPage + 1 != questions.count {
            questionsViews[currentPage + 1].showAnimation()
        }
        
        questions[currentPage].selectedAnswer = view.tag
        
        userDefaults.currentQuiz?.quizResult = calculateResult()
        
        if currentPage == questions.count - 1  {
            
        } else {
            let viewFrame = questionsViews[currentPage].frame
            let xPoint = viewFrame.origin.x + viewFrame.size.width
            scrollView.setContentOffset(CGPoint(x: xPoint, y: 0), animated: true)
        }
    }
    
    private func calculateResult() -> Int {
        var sum = 0
        questions.forEach { question in
            guard let answer = question.selectedAnswer else { return }
            sum += question.answers[answer].scrore
        }
        return sum
    }
}
