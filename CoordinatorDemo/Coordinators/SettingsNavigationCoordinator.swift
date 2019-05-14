//
//  SettingsNavigationCoordinator.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class SettingsNavigationCoordinator: NavigationCoordinator {
    override func start(_ deeplink: URL? = nil) {
        let vc = SettingsViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)

        navigationController.tabBarItem = UITabBarItem(title: "Settings", image: nil, selectedImage: nil)
    }

    override func handle(_ deeplink: URL?) {
        // do nothing
    }
}
