//
//  Poster.swift
//  flixster
//
//  Created by Colton Scott on 2/4/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
    
}

struct Poster: Decodable {
    let poster_path: String
}
