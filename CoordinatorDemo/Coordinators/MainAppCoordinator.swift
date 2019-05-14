//
//  MainAppCoordinator.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class MainAppCoordinator: AppCoordinator {

    var deeplink: URL?

    override func start(_ deeplink: URL? = nil) {
        self.deeplink = deeplink

        let vc = SplashViewController.instantiate()
        vc.coordinator = self
        window.rootViewController = vc
        window.makeKeyAndVisible()
    }

    override func handle(_ deeplink: URL?) {
        self.deeplink = deeplink

        // If showMainTab was already called
        if let mainTabCoordinator = childCoordinators.first(where: { $0 is MainTabCoordinator }) {
            mainTabCoordinator.handle(deeplink)
        }
        // otherwise, it will be handled when showMainTab is called
    }

    func showMainTab() {
        let mainTabCoordinator = MainTabCoordinator()
        childCoordinators.append(mainTabCoordinator)
        window.rootViewController = mainTabCoordinator.tabController
        mainTabCoordinator.start(deeplink)
    }
}

