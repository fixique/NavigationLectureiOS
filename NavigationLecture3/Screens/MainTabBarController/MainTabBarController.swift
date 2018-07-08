//
//  MainTabBarController.swift
//  NavigationLecture3
//
//  Created by Vlad Krupenko on 08.07.2018.
//  Copyright © 2018 Vlad Krupenko. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
    }

    func setupController() {
        let firstController = MainViewController()
        let secondController = SecondTestController()
        setViewControllers([firstController, secondController], animated: true)
    }

}
