//
//  ViewController.swift
//  Homework 4
//
//  Created by Tipachel on 29.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let login = "User"
    let password = "Password"
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonPressed() {
        if userNameTF.text == "" && passwordTF.text == ""{
            showAlert(title: "Oops!",
                      message:"The fields is empty!")
        }else if userNameTF.text != login || passwordTF.text != password {
            showAlert(title: "Oops!",
                      message: "User name or password is incorrect!")
        }
    }
    
    @IBAction func userNameReminder() {
        showAlert(title: "Forgot your name", message: "Your name is \(login)")
    }
    
    @IBAction func passwordReminder() {
        showAlert(title: "Forgot your password", message: "Your password is \(password) ")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let accountVC = segue.destination as? AccountViewController else { return }
        
        accountVC.username = userNameTF.text
        
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
