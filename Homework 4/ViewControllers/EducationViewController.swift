//
//  EducationViewController.swift
//  Homework 4
//
//  Created by Tipachel on 31.10.2021.
//

import UIKit

class EducationViewController: UIViewController {
 
    var user = User.getInfo()
    @IBOutlet var schoolLabel: UILabel!
    @IBOutlet var collegeLabel: UILabel!
    @IBOutlet var coursesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        schoolLabel.text = "School:\(user.education.school)"
        collegeLabel.text = "College:\(user.education.college)"
        coursesLabel.text = "Courses:\(user.education.courses)"

    }
    

}
