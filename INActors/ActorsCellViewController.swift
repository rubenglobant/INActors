//
//  ActorsCellViewController.swift
//  INActors
//
//  Created by Ruben Garcia on 7/23/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit

// class defined to declare the cell elements
class ActorsCellViewController: UITableViewCell {

    @IBOutlet weak var actorsName: UILabel!
    @IBOutlet weak var actorsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
