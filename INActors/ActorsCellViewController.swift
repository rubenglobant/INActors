//
//  ActorsCellViewController.swift
//  INActors
//
//  Created by Ruben Garcia on 7/23/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit

class ActorsCellViewController: UITableViewCell {

    @IBOutlet weak var actorsName: UILabel!
    @IBOutlet weak var actorsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
