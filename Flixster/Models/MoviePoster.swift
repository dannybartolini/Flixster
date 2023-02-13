//
//  MoviePoster.swift
//  Flixster
//
//  Created by Daniel Bartolini on 2/12/23.
//

import Foundation

struct MoviePosterSearchResponse: Decodable {
    let results: [MoviePoster]
}

struct MoviePoster: Decodable {
    let poster_path: String
}
