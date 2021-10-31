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
    
    var userInformation = BasicInfo!
  
       
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.layer.cornerRadius = 15
        
        greetings.text = "Congratulations, \(userInformation.userName)!"
        nameLabel.text = "Name: \(userInformation.firstName)"
        lastNameLabel.text = "Lastname: \(userInformation.lastName)"
        ageLabel.text = "Age: \(userInformation.age)"
        eMailLabel.text = "eMail: \(userInformation.eMail)"
        
    }
    
}
