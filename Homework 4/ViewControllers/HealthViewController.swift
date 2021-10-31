//
//  HealthViewController.swift
//  Homework 4
//
//  Created by Tipachel on 31.10.2021.
//

import UIKit

class HealthViewController: UIViewController {
    
    @IBOutlet var hightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var bloodTypeLabel: UILabel!
    
    let user = User.getInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    hightLabel.text = "Height: \(user.health.height) cm"
    weightLabel.text = "Weight:\(user.health.weight) kg"
    bloodTypeLabel.text = "BloodType:\(user.health.bloodType) \(user.health.rHFactor.rawValue)"
        
    }
    
    
    
}
