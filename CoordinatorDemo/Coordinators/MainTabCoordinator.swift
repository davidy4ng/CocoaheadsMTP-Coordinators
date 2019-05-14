//
//  MainTabCoordinator.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class MainTabCoordinator: TabCoordinator {
    override func start(_ deeplink: URL? = nil) {
        let navigationCoordinators: [NavigationCoordinator] = [
            MovieNavigationCoordinator(),
            FavoritesNavigationCoordinator(),
            SettingsNavigationCoordinator()
        ]

        navigationCoordinators.forEach { $0.start() }
        tabController.viewControllers = navigationCoordinators.map { $0.navigationController }
        childCoordinators = navigationCoordinators

        handle(deeplink)
    }

    override func handle(_ deeplink: URL?) {
        let idx: Int?

        switch deeplink?.tab {
        case .movie?:
            idx = childCoordinators.firstIndex(where: { $0 is MovieNavigationCoordinator })
        case .favorites?:
            idx = childCoordinators.firstIndex(where: { $0 is FavoritesNavigationCoordinator })
        case .settings?:
            idx = childCoordinators.firstIndex(where: { $0 is SettingsNavigationCoordinator })
        default:
            idx = nil
        }

        if let idx = idx {
            // select the tab
            tabController.selectedIndex = idx
            // call handle(_:)
            let coordinator = childCoordinators[idx]
            coordinator.handle(deeplink)
        }
    }
}
