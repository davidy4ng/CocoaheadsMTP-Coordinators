//
//  MainAppCoordinator.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class MainAppCoordinator: AppCoordinator {
    override func start() {
        let vc = SplashViewController.instantiate()
        vc.coordinator = self
        window.rootViewController = vc
        window.makeKeyAndVisible()
    }

    func showMainTab() {
        let mainTabCoordinator = MainTabCoordinator()
        childCoordinators.append(mainTabCoordinator)
        window.rootViewController = mainTabCoordinator.tabController
        mainTabCoordinator.start()
    }
}

