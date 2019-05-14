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
    func start(_ deeplink: URL?)
    func handle(_ deeplink: URL?)
}

// MARK:- Base coordinators

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    let window = UIWindow()

    func start(_ deeplink: URL? = nil) {
        fatalError("Subclasses should override start method")
    }

    func handle(_ deeplink: URL?) {
        fatalError("Subclasses should override handle method")
    }
}

class TabCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    let tabController = UITabBarController()

    func start(_ deeplink: URL? = nil) {
        fatalError("Subclasses should override start method")
    }

    func handle(_ deeplink: URL?) {
        fatalError("Subclasses should override handle method")
    }
}

class NavigationCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    let navigationController = UINavigationController()

    func start(_ deeplink: URL? = nil) {
        fatalError("Subclasses should override start method")
    }

    func handle(_ deeplink: URL?) {
        fatalError("Subclasses should override handle method")
    }
}

