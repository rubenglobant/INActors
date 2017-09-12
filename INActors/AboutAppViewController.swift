//
//  AboutAppViewController.swift
//  INActors
//
//  Created by Ruben Garcia on 7/26/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit

// class defined in order to give an user entry
class AboutAppViewController: UIViewController {

    @IBOutlet weak var welcomeMessage: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.text = "Welcome, find here information about your favorite actors"
    }
}
