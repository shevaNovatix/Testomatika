//
//  StarViewController.swift
//  Testomatika
//
//  Created by Admin on 09.07.2021.
//

import UIKit
import SwiftConfettiView

class StarViewController: MainViewController {
    
    var confettiView: SwiftConfettiView!

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confettiView = SwiftConfettiView(frame: view.bounds)
        confettiView.type = .star
        confettiView.startConfetti()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.confettiView.stopConfetti()
        }
        
        view.addSubview(confettiView)
        addBackgroundImageView("11")
        
    }
    

    @IBAction func moreButtonAction() {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
