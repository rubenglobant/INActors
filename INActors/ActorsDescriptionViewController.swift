//
//  ActorsDescriptionViewController.swift
//  INActors
//
//  Created by Ruben Garcia on 7/24/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit

class ActorsDescriptionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var actorDescriptionImage: UIImageView!
    @IBOutlet weak var actorDescriptionName: UILabel!
    @IBOutlet weak var moviewTableView: UITableView!
    
    var getName = String()
    var getImage = String()
    var getMovieTitle = [String?]()
    var getMovieRelease = [String?]()
    var getMoviePoster = [String?]()

    
    struct movie {
        var movieTitle : String!
        var movieRelease : String!
        var moviePoster : String!
    }
    
    var moviesArray = [movie]()
    var moviesArraySorted = [movie]()
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        self.actorDescriptionName.text! = getName
        
        if (getImage == "withoutImage") {
            self.actorDescriptionImage.image = UIImage(named: "No-image-available.jpg")
        } else {
            let url = URL(string: getImage)
            self.actorDescriptionImage.kf.setImage(with: url)
        }
        
        for i in 0..<getMovieTitle.count{
            moviesArray.append(movie(movieTitle: getMovieTitle[i], movieRelease: getMovieRelease[i], moviePoster: getMoviePoster[i]))
        }
        
        self.moviesArraySorted = moviesArray.sorted(by: {$0.movieRelease < $1.movieRelease})
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArraySorted.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = moviewTableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MoviesCellViewController
        cell.cellMoviesTitle?.text = moviesArraySorted[indexPath.row].movieTitle
        cell.cellMoviesRelease?.text = moviesArraySorted[indexPath.row].movieRelease
        
        let urlMovieImageFile = "http://image.tmdb.org/t/p/w185/"+moviesArraySorted[indexPath.row].moviePoster
        let url = URL(string: urlMovieImageFile)
        cell.cellMoviesImage.kf.setImage(with: url)
        
        return cell
    }

}
