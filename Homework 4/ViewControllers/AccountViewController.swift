//
//  AccountViewController.swift
//  Homework 4
//
//  Created by Tipachel on 30.10.2021.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet var greetings: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var eMailLabel: UILabel!
    
    @IBOutlet var logOutButton: UIButton!
    
  
    var user: User!
       
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.layer.cornerRadius = 15
        
        greetings.text = "Congratulations, \(user.userInfo.userName)!"
        nameLabel.text = "Name: \(user.userInfo.firstName)"
        lastNameLabel.text = "Lastname: \(user.userInfo.lastName)"
        ageLabel.text = "Age: \(user.userInfo.age)"
        eMailLabel.text = "eMail: \(user.userInfo.eMail)"
        
    }
    
}
