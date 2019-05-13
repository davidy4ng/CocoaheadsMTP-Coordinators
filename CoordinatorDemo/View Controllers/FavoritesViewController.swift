//
//  FavoritesViewController.swift
//  CoordinatorDemo
//
//  Created by David Yang on 13/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    @IBAction func goToMovieAction(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "MovieViewController") as? MovieViewController {
            vc.id = 42
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
