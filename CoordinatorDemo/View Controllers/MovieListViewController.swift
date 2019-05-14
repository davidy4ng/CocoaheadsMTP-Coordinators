//
//  MovieListViewController.swift
//  CoordinatorDemo
//
//  Created by David Yang on 13/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, Storyboarded {
    weak var coordinator: NavigationCoordinator?

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToMovie", let destinationVC = segue.destination as? MovieViewController {
//            destinationVC.id = 3000
//        }
//    }

    @IBAction func goToMovieAction(_ sender: Any) {
//        performSegue(withIdentifier: "goToMovie", sender: sender)
        coordinator?.showMovieWithId(3000)
    }
}
