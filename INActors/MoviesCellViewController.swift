//
//  MoviesCellViewController.swift
//  INActors
//
//  Created by Ruben Garcia on 7/25/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit

// class defined to declare the cell elements
class MoviesCellViewController: UITableViewCell {

    @IBOutlet weak var cellMoviesImage: UIImageView!
    @IBOutlet weak var cellMoviesTitle: UILabel!
    @IBOutlet weak var cellMoviesRelease: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
