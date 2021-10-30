//
//  AccountViewController.swift
//  Homework 4
//
//  Created by Tipachel on 30.10.2021.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet var greetings: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var username:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.layer.cornerRadius = 15
        greetings.text = "Congratulations, \(username ?? "")!"
        
    }
    
}
