//
//  GreetingViewController.swift
//  AccessWindowApp
//
//  Created by Pavel Lazarev Macbook on 14.08.2022.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }


}
