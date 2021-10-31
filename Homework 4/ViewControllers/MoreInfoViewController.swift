//
//  MoreInfoViewController.swift
//  Homework 4
//
//  Created by Tipachel on 30.10.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    var user: User!
   
    
    @IBOutlet var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = user.userInfo.userName
        
    
        
    }
    @IBAction func healthButton() {
        
    }
    @IBAction func educationButton() {
    }
    
    
}

