//
//  QuizzesCollectionViewController.swift
//  BasicCollectionAnimationProject
//

import UIKit

class QuizzesCollectionViewController: UICollectionViewController {
    
	private let quizzes = QuizStorage.quizzes
	
	override func viewDidLoad() {
		super.viewDidLoad()
        configureCollectionView()
	}
    
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        quizzes.count
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ContextCell.id, for: indexPath) as! ContextCell
		cell.quiz = quizzes[indexPath.item]
		return cell
	}
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let quiz = quizzes[indexPath.item]
        
        if quiz.isOpen {
            UserDefaultsManager.shared.currentQuiz = quiz
            setStartViewController()
        } else {
            showAlert(title: "😀", message: "We will open this quiz very soon.")
        }
    }
    
    private func configureCollectionView() {
        let image = UIImage(named: "mainBackground")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleToFill
        
        collectionView.bounces = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundView = imageView
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView?.decelerationRate = .fast
    }
}
