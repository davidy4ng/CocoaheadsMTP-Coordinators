//
//  URL+Deeplink.swift
//  CoordinatorDemo
//
//  Created by David Yang on 14/05/2019.
//  Copyright © 2019 David Yang. All rights reserved.
//

import Foundation

extension URL {

    enum DeeplinkTab {
        case movie(id: Int?)
        case favorites
        case settings
    }
    
    var tab: DeeplinkTab? {
        switch self.host {
        case "movie":
            if let urlComp = URLComponents(string: self.absoluteString),
                let queryItems = urlComp.queryItems,
                let idItem = queryItems.first(where: { $0.name == "id" }),
                let idValue = idItem.value,
                let id = Int(idValue) {
                return .movie(id: id)
            }
            return .movie(id: nil)
        case "favorites":
            return .favorites
        case "settings":
            return .settings
        default:
            return nil
        }
    }
}
