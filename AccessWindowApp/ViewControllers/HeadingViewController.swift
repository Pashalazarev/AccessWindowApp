//
//  HeadingViewController.swift
//  AccessWindowApp
//
//  Created by Pavel Lazarev Macbook on 19.08.2022.
//

import UIKit

class HeadingViewController: UIViewController {

    @IBOutlet var greetingDataButton: UIButton!
    
    var user: User!
    var greetingButton = ""
    
    
    // MARK: - ViewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingDataButton.setTitle("More information about \(greetingButton)", for: .normal)
    }
    // MARK: - OvverrideFunctions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let informationVC = segue.destination as? InformationViewController else { return }
        informationVC.user = user
    }
}
