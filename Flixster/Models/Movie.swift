//
//  Movie.swift
//  Flixster
//
//  Created by Daniel Bartolini on 2/5/23.
//

import Foundation

struct Movie: Decodable {
    let title: String
    let overview: String
    let poster_path: String
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}

struct MovieResponse: Decodable {
    let results: [Movie]
}


//extension Movie {
//
//    static var mockMovies: [Movie] = [
//        Movie(movieName: "Braveheart", movieSummary: "William Wallace fights for the freedom of Scotland", movieImage: URL(string: "https://images.discerningassets.com/image/upload/c_fit,h_1000,w_1000/c_fit,fl_relative,h_1.0,o_100,w_1.0/v1636070048/Braveheart_poster_Hailes_w47kan.jpg")!,voteAverage: "vote average: 8.5", voteCount: "vote count: 200", popularity: "popularity: 56.7"),
//        Movie(movieName: "Drive", movieSummary: "Guy driving very fun", movieImage: URL(string: "https://i.etsystatic.com/34607593/r/il/eee45f/3826430759/il_570xN.3826430759_exwt.jpg")!, voteAverage: "vote average: 9.2", voteCount: "vote count: 180", popularity: "popularity: 28.9"),
//        Movie(movieName: "Ex Machina", movieSummary: "Guy makes experimental AI to perform the ultimate prank", movieImage: URL(string: "https://alternativemovieposters.com/wp-content/uploads/2020/11/ExMachina_AgustinRMichel.jpg")!, voteAverage: "45.8", voteCount: "270", popularity: "29.4"),
//        Movie(movieName: "Whiplash", movieSummary: "Andrew Neimann takes drumming seriously", movieImage: URL(string: "https://cdn.shopify.com/s/files/1/0747/3829/products/HP2519_3b09887d-5c1b-4398-a3ab-7203b9b29265_1024x1024.jpg?v=1571444854")!, voteAverage: "23.4", voteCount: "140", popularity: "23.4"),
//        Movie(movieName: "The GodFather", movieSummary: "Corleone family struggles to maintain power", movieImage: URL(string: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg")!, voteAverage: "56.4", voteCount: "190", popularity: "45.3")
//    ]
//}


