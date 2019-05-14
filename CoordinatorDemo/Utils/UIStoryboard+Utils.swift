//
//  UIStoryboard+Utils.swift
//  CoordinatorDemo
//
//  Created by David Yang on 13/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import UIKit

extension UIStoryboard {

    static var splash: UIStoryboard {
        return UIStoryboard(name: "Splash", bundle: Bundle.main)
    }
    
    static var main: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }

    static var settings: UIStoryboard {
        return UIStoryboard(name: "Settings", bundle: Bundle.main)
    }
}
