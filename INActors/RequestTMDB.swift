//
//  RequestTMDB.swift
//  INActors
//
//  Created by Ruben Garcia on 7/23/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit
import Alamofire

class RequestTMDB: NSObject {
    
    let urlBase = "https://api.themoviedb.org/3/search/"
    let urlSearch = "person?"
    let urlApiKey = "api_key=10d719f86784720b0f0731227ed04cff"
    let urlLanguage = "&language=en-US"
    var urlQuery = "&query="
    let urlAdult = "&include_adult=false"
    
    
    
    func people(inTableViewActors: UITableView, search actorName: String){
        
        let searchTextFormatted = actorName.replacingOccurrences(of: " ", with: "%20")
        urlQuery = urlQuery + searchTextFormatted
        let url = URL(string: urlBase+urlSearch+urlApiKey+urlLanguage+urlQuery+urlAdult)

        Alamofire.request(url!).responseJSON { response in
            if let json = response.result.value as? NSDictionary {
                actorsInfo = json["results"] as? [NSDictionary]
                DispatchQueue.main.async {
                    inTableViewActors.reloadData()
                }
            }
        }
        
    }
    



}
