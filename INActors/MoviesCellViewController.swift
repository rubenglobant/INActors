//
//  MoviesCellViewController.swift
//  INActors
//
//  Created by Ruben Garcia on 7/25/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit

class MoviesCellViewController: UITableViewCell {

    @IBOutlet weak var cellMoviesImage: UIImageView!
    @IBOutlet weak var cellMoviesTitle: UILabel!
    @IBOutlet weak var cellMoviesRelease: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
