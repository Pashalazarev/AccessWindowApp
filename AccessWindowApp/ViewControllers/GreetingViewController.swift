//
//  GreetingViewController.swift
//  AccessWindowApp
//
//  Created by Pavel Lazarev Macbook on 14.08.2022.
//

import UIKit

class GreetingViewController: UIViewController {


    @IBOutlet var welcomeLabelTF: UILabel!
    
    var welcomeLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabelTF.text = "Welcome, \(welcomeLabel)"
    }
}
