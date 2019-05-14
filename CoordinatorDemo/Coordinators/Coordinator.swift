//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by David Yang on 13/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

// MARK:- Base coordinators

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    let window = UIWindow()

    func start() {
        fatalError("Subclasses should override start method")
    }
}

class TabCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    let tabController = UITabBarController()

    func start() {
        fatalError("Subclasses should override start method")
    }
}

class NavigationCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    let navigationController = UINavigationController()

    func start() {
        fatalError("Subclasses should override start method")
    }
}

