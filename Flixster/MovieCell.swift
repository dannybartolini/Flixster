//
//  MovieCell.swift
//  Flixster
//
//  Created by Daniel Bartolini on 2/5/23.
//
import Nuke
import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieSummaryLabel: UILabel!
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.title 
        movieSummaryLabel.text = movie.overview
        let poster_path_URL = URL(string: "https://image.tmdb.org/t/p/w500" + movie.poster_path)
////
////      // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: poster_path_URL as! ImageRequestConvertible, into: movieImageView)
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
