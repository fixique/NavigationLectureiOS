//
//  MainTabBarController.swift
//  NavigationLecture3
//
//  Created by Vlad Krupenko on 08.07.2018.
//  Copyright © 2018 Vlad Krupenko. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    // MARK: - UITabBarController

    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }

}

// MARK: - Configure

private extension MainTabBarController {

    func setupControllers() {
        let firstController = getFirstController()
        let secondController = getSecondController()
        let thirdController = getThirdController()
        setViewControllers([firstController, secondController, thirdController], animated: true)
    }

    func getFirstController() -> UINavigationController {
        let firstController = MainViewController()
        firstController.title = "Главная"
        firstController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.bookmarks, tag: 3)
        return UINavigationController(rootViewController: firstController)
    }

    func getSecondController() -> UINavigationController {
        let tableViewController = TableViewController()
        tableViewController.title = "Таблица"
        tableViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.favorites, tag: 3)
        return UINavigationController(rootViewController: tableViewController)
    }

    func getThirdController() -> UINavigationController {
        let secondController = SecondTestController()
        secondController.title = "Контроллер"
        secondController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.more, tag: 3)
        return UINavigationController(rootViewController: secondController)
    }

}
