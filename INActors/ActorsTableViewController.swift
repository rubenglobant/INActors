//
//  ActorsTableViewController.swift
//  INActors
//
//  Created by Ruben Garcia on 7/23/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit
import Kingfisher

var actorsInfo : [NSDictionary]?

class ActorsTableViewController: UITableViewController, UISearchControllerDelegate, UISearchBarDelegate {

    @IBOutlet weak var actorsSearchBar: UISearchBar!
    var actor : NSDictionary?
    var name : NSString?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actorsSearchBar.delegate = self
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if actorsInfo != nil{
            return (actorsInfo?.count)!
        }
        else {
            return 0
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "actorsCell", for: indexPath) as! ActorsCellViewController
        actor = actorsInfo?[indexPath.row]
        name = actor?["name"] as? NSString
        cell.actorsName?.text = name! as String
        
        let actorImageFile = actor?["profile_path"] as? String
        var urlActorImageFile: String

        if (actorImageFile == nil) {
            cell.actorsImage.image = UIImage(named: "No-image-available.jpg")
        } else {
            urlActorImageFile = "http://image.tmdb.org/t/p/w185/"+actorImageFile!
            let urlImage = URL(string: urlActorImageFile)
            cell.actorsImage.kf.setImage(with: urlImage)
        }

        return cell

    }
    
 
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

            let requestActors: RequestTMDB = RequestTMDB()
            requestActors.people(inTableViewActors: tableView, search: searchText)
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let description = storyBoard.instantiateViewController(withIdentifier: "ActorsDescriptionViewController") as! ActorsDescriptionViewController
        
        actor = actorsInfo?[indexPath.row]
        name = actor?["name"] as? NSString
        description.getName = name! as String
        
        let actorImageFile = actor?["profile_path"] as? String
        
        if (actorImageFile == nil) {
            description.getImage = "withoutImage"
        } else {
            description.getImage = "http://image.tmdb.org/t/p/w185/"+actorImageFile!

        }
        
        let known_for = actor?["known_for"] as? NSArray
        var movieTitle = [String?]()
        var movieRelease = [String?]()
        var moviePoster = [String?]()
        
        for item in known_for! { // loop through data items
            let obj = item as! NSDictionary
            for (key, value) in obj {

                if (key as! String == "title") {
                    movieTitle.append(value as? String)
                }
                if (key as! String == "release_date") {
                    movieRelease.append(value as? String)
                }
                if (key as! String == "poster_path") {
                    moviePoster.append(value as? String)
                }
                
            }
        }
        
        description.getMovieTitle = movieTitle as! [String]
        description.getMovieRelease = movieRelease as! [String]
        description.getMoviePoster = moviePoster as! [String]
        
        
        self.navigationController?.pushViewController(description, animated: true)

    }

}
