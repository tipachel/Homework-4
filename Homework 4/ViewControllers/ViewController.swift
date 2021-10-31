//
//  ViewController.swift
//  Homework 4
//
//  Created by Tipachel on 29.10.2021.
//

import UIKit

class ViewController: UIViewController {
        
    let user = BasicInfo(userName: "User", password: "Password", firstName: "Daria", lastName: "Uglovskaya", age: 27, eMail: "d.uglovskaya@gmail.com")

    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonPressed() {
        if userNameTF.text == "" && passwordTF.text == ""{
            showAlert(title: "Oops!",
                      message:"The fields is empty!")
        }else if userNameTF.text != user.userName || passwordTF.text != user.password {
            showAlert(title: "Oops!",
                      message: "User name or password is incorrect!")
        }
    }
    
    @IBAction func userNameReminder() {
        showAlert(title: "Forgot your name", message: "Your name is \(user.userName)")
    }
    
    @IBAction func passwordReminder() {
        showAlert(title: "Forgot your password", message: "Your password is \(user.password) ")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        guard let accountVC = segue.destination as? AccountViewController else {return}
        let viewControllers = [ViewController() , AccountViewController() , MoreInfoViewController() ]
        for viewController in viewControllers{
            if let accountVC = viewController as? AccountViewController{
                accountVC.userInformation = user
            }
        }
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
        
    }
    
    
}

extension ViewController {
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){ _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
extension ViewController: UITextFieldDelegate{
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with:event)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        }else{
            loginButtonPressed()
            performSegue(withIdentifier: "ShowAccountVC", sender: nil)
            
        }
        return true
    }
}
