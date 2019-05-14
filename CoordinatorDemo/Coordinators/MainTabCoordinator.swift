//
//  MainTabCoordinator.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class MainTabCoordinator: TabCoordinator {
    override func start() {
        let navigationCoordinators: [NavigationCoordinator] = [
            MovieNavigationCoordinator(),
            FavoritesNavigationCoordinator(),
            SettingsNavigationCoordinator()
        ]

        navigationCoordinators.forEach { $0.start() }
        tabController.viewControllers = navigationCoordinators.map { $0.navigationController }
        childCoordinators = navigationCoordinators
    }
}
