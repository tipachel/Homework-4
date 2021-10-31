//
//  MoreInfoViewController.swift
//  Homework 4
//
//  Created by Tipachel on 30.10.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {

    var user = User.getInfo()
    
    @IBOutlet var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
      
        super.viewDidLoad()

        nameLabel.text = user.userInfo.firstName + " " + user.userInfo.lastName
    }
}

