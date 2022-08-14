//
//  ViewController.swift
//  AccessWindowApp
//
//  Created by Pavel Lazarev Macbook on 12.08.2022.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var PasswordTF: UITextField!
    @IBOutlet var UserNameTF: UITextField!
 
    
    private let login = "Pavel"
    private let password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
   
    // MARK: - IBAction
    
    @IBAction func logInButtonPressed() {
      
    }
    @IBAction func forgotUserName() {
        showAlertController (with: "Oops", and: "Your name is \(login)👈")
    }
    
    @IBAction func forgotPassword() {
        showAlertController (with: "Oops", and: "Your password is \(password)👈")
    }
    

}

// MARK: - Private Methods
private func forgotUserName () -> Bool {
 
    return true
}

private func forgotPassword() -> Bool {
    
    return true
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

