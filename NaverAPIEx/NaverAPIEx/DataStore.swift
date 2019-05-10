//
//  DataStore.swift
//  NaverAPIEx
//
//  Created by Domino on 10/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import Foundation

class dataManager {
    
    static let shared: dataManager = dataManager()
    var searchResult: SearchResult?
    
    private init () {
    }
    
}

struct SearchResult: Codable{
    struct MovieInfo: Codable {
        let title: String
        let link: String
        let image: String
        let subtitle: String
        let pubDate: String
        let director: String
        let actor: String
        let userRating: String
    }
    let lastBuildDate: String
    let total: Int
    let start: Int
    let display: Int
    let items: [MovieInfo]
}

