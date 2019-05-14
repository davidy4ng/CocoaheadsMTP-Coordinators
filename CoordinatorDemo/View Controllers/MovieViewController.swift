//
//  MovieViewController.swift
//  CoordinatorDemo
//
//  Created by David Yang on 13/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, Storyboarded {
    weak var coordinator: NavigationCoordinator?
    var id: Int?

    @IBOutlet weak var movieIdLabel: UILabel! {
        didSet {
            if let id = id {
                movieIdLabel.text = "\(id)"
            } else {
                movieIdLabel.text = ""
            }
        }
    }
}
