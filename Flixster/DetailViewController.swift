//
//  DetailViewController.swift
//  Flixster
//
//  Created by Daniel Bartolini on 2/5/23.
//
import Nuke
import UIKit

class DetailViewController: UIViewController {
    
    var movie: Movie!

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var voteAverage: UILabel!
    
    @IBOutlet weak var voteCount: UILabel!
    
    @IBOutlet weak var popularity: UILabel!
    
    @IBOutlet weak var movieSummary: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
//        Nuke.loadImage(with: movie.movieImage, into: movieImageView)
//
//        // Set labels with the associated track values.
        movieNameLabel.text = movie.title
        voteAverage.text = String(format: "%.2f", movie.vote_average) + " vote average"
        voteCount.text = String(movie.vote_count) + " votes"
        popularity.text = String(movie.popularity) + " Popularity"
        movieSummary.text = String(movie.overview)
        
        let poster_path_URL = URL(string: "https://image.tmdb.org/t/p/w500" + movie.poster_path)
////
////      // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: poster_path_URL as! ImageRequestConvertible, into: movieImageView)

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
