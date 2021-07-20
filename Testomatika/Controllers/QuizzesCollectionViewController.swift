//
//  QuizzesCollectionViewController.swift
//  BasicCollectionAnimationProject
//

import UIKit

class QuizzesCollectionViewController: UICollectionViewController {
    
	private let quizzes = QuizStorage.quizzes
//    private var onceOnly = false
//    private var quizIndex = RemoteConfigService.shared.int(forKey: .startVC)
	
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
    
    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        if !onceOnly {
//            let y = ContextCellConstants.differentHeight * CGFloat(quizIndex)
//            let contentOffset = CGPoint(x: 0, y: y)
//            collectionView.setContentOffset(contentOffset, animated: false)
//            onceOnly = true
//        }
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
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)
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
