//
//  PostersViewController.swift
//  Flixster
//
//  Created by Daniel Bartolini on 2/12/23.
//

import UIKit
import Nuke

class PostersViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var posters: [MoviePoster] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        collectionView.dataSource = self
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=5dce4632b120e224ef8b94d05d8d4dee")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }
            
            let decoder = JSONDecoder()

            do {
                // Try to parse the JSON into a dictionary (aka: [String: Any])
//                guard let jsonDictionary = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
//                    print("❌ Could not cast data to dictionary")
//                    return
//                }
//                print(jsonDictionary)
                let response = try decoder.decode(MoviePosterSearchResponse.self, from: data)
                   let posterData = response.results
                DispatchQueue.main.async {
                    self?.posters = posterData
                
                    self?.collectionView.reloadData()
                    
                }

                
            } catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        task.resume()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.minimumInteritemSpacing = 4
        layout.minimumLineSpacing = 4
        
        let numberOfColumns: CGFloat = 3
        
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns-1)) / numberOfColumns
        
        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: width, height: width+50)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        posters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell

           // Use the indexPath.item to index into the albums array to get the corresponding album
           let poster = posters[indexPath.item]

           // Set the image on the image view of the cell
        let poster_path_URL = URL(string: "https://image.tmdb.org/t/p/w500" + poster.poster_path)
////
////      // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: poster_path_URL!, into: cell.posterImageView)

           return cell
    
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
