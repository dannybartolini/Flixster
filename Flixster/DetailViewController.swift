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
        Nuke.loadImage(with: movie.movieImage, into: movieImageView)

        // Set labels with the associated track values.
        movieNameLabel.text = movie.movieName
        voteAverage.text = movie.voteAverage
        voteCount.text = movie.voteCount
        popularity.text = movie.popularity
        movieSummary.text = movie.movieSummary

        
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
