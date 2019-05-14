//
//  NavigationCoordinator+Extensions.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

extension NavigationCoordinator {
    func showMovieWithId(_ id: Int) {
        let movieVC = MovieViewController.instantiate()
        movieVC.coordinator = self
        movieVC.id = id
        navigationController.pushViewController(movieVC, animated: true)
    }
}
