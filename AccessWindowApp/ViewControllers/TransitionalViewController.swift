//
//  TransitionalViewController.swift
//  AccessWindowApp
//
//  Created by Pavel Lazarev Macbook on 17.08.2022.
//

import UIKit

class TransitionalViewController: UIViewController {
    
    @IBOutlet var GreetingItem: UINavigationItem!
    
    let userTitleText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GreetingItem.title = userTitleText
    }
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        
    }
}
