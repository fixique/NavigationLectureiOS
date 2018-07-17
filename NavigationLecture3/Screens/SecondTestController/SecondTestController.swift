//
//  SecondTestController.swift
//  NavigationLecture3
//
//  Created by Vlad Krupenko on 08.07.2018.
//  Copyright © 2018 Vlad Krupenko. All rights reserved.
//

import UIKit

class SecondTestController: UIViewController {

    func pushMainSettingsController() {
        let mainSettingsController = MainSettingsController()
        self.navigationController?.pushViewController(mainSettingsController, animated: true)
    }

}
