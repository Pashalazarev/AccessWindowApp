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
     
     private let user = Person.getUserData()

    
     // MARK: - ViewDidLoad func
     
    override func viewDidLoad() {
        super.viewDidLoad()    
    }
    // MARK: - OvverrideFunctions
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let tabBarController = segue.destination as? UITabBarController
         else { return }
         guard let viewControllers = tabBarController.viewControllers
         else { return }
         
         for viewController in viewControllers {
             if let greetingVC = viewController as? GreetingViewController {
                 greetingVC.welcomeLabel = user.person.name
             } else if let navigationVC = viewController as? UINavigationController {
                 guard let headingVC = navigationVC.topViewController as? HeadingViewController else { return }
                 headingVC.greetingButton = user.person.name
         }
     }
     }
     
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
   
    // MARK: - IBAction
    
    @IBAction func logInButtonPressed() {
        if UserNameTF.text != user.login && PasswordTF.text != user.password {
            showAlertController(with: "Invalid login or password",
                                and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserName() {
        showAlertController (with:"Oops", and: "Your name is \(user.login)👈")
    }
    
    @IBAction func forgotPassword() {
        showAlertController (with:"Oops",
                             and: "Your password is \(user.password)👈")
    }
     
     @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
         PasswordTF.text = ""
         UserNameTF.text = ""
     }
     }


// MARK: - UIAlertController

extension UIViewController {
    func showAlertController (with titile: String, and message: String) {
        let alert = UIAlertController(title: titile,
                                      message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
 
