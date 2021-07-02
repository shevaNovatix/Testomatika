//
//  NavigationController.swift
//   TestomatikaTest
//
//  Created by Admin on 08.06.2021.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.standardAppearance.configureWithTransparentBackground()
        navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: UIColor.white, .font: Roboto.fetchFont(.bold, 18)]
        navigationBar.tintColor = .white
    }
}
