//
//  MovieNavigationCoordinator.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class MovieNavigationCoordinator: NavigationCoordinator {
    override func start() {
        let vc = MovieListViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)

        navigationController.tabBarItem = UITabBarItem(title: "Movie List", image: nil, selectedImage: nil)
    }
}
