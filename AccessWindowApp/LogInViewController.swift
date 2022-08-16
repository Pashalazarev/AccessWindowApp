//
//  ViewController.swift
//  AccessWindowApp
//
//  Created by Pavel Lazarev Macbook on 12.08.2022.
//

import UIKit

 final class LogInViewController: UIViewController {

    @IBOutlet var PasswordTF: UITextField!
    @IBOutlet var UserNameTF: UITextField!
    @IBOutlet var LogInButton: UIButton!
     
    private let login = "Pavel"
    private let password = "Swiftbook"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }
    // MARK: - OvverrideFunctions
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else {return}
        greetingVC.welcomeLabel = UserNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
   
    // MARK: - IBAction
    
    @IBAction func logInButtonPressed() {
        if UserNameTF.text != login || PasswordTF.text != password {
            showAlertController(with: "Invalid login or password",
                                and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserName() {
        showAlertController (with:"Oops", and: "Your name is \(login)👈")
    }
    
    @IBAction func forgotPassword() {
        showAlertController (with:"Oops", and: "Your password is \(password)👈")
    }
     
     @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
         PasswordTF.text = ""
         UserNameTF.text = ""
     }
}

    
        



// MARK: - UIAlertController

extension UIViewController {
    func showAlertController (with titile: String, and message: String) {
        let alert = UIAlertController(title: titile, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

