//
//  Storyboarded.swift
//  CoordinatorDemo
//
//  Created by David Yang on 13/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let name = NSStringFromClass(self)
        let className = name.components(separatedBy: ".").last!
        return storyboard(for: className).instantiateViewController(withIdentifier: className) as! Self
    }

    private static func storyboard(for className: String) -> UIStoryboard {
        switch className {
        case "SplashViewController":
            return UIStoryboard.splash
        case "MovieListViewController":
            return UIStoryboard.main
        case "MovieViewController":
            return UIStoryboard.main
        case "FavoritesViewController":
            return UIStoryboard.main
        case "SettingsViewController":
            return UIStoryboard.settings
        default:
            fatalError("No storyboard for class \(NSStringFromClass(self))")
        }
    }
}

