//
//  SplashViewController.swift
//  CoordinatorDemo
//
//  Created by David Yang on 13/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController, Storyboarded {
    weak var coordinator: MainAppCoordinator?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // wait for 2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//
//            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            if let vc = mainStoryboard.instantiateInitialViewController() {
//                appDelegate.window?.rootViewController = vc
//            }
            self.coordinator?.showMainTab()
        }
    }
}
