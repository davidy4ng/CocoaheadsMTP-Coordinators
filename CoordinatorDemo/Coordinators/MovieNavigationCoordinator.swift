//
//  MovieNavigationCoordinator.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class MovieNavigationCoordinator: NavigationCoordinator {
    override func start(_ deeplink: URL? = nil) {
        let vc = MovieListViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)

        navigationController.tabBarItem = UITabBarItem(title: "Movie List", image: nil, selectedImage: nil)
    }

    override func handle(_ deeplink: URL?) {
        switch deeplink?.tab {
        case .movie(let id)?:
            showMovieWithId(id)
        default:
            break
        }
    }
}
