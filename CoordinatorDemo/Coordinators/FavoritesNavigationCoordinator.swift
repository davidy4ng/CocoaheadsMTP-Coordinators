//
//  FavoritesNavigationCoordinator.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class FavoritesNavigationCoordinator: NavigationCoordinator {
    override func start() {
        let vc = FavoritesViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)

        navigationController.tabBarItem = UITabBarItem(title: "Favorites", image: nil, selectedImage: nil)
    }
}
