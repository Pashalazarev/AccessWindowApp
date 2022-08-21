//
//  InformationViewController.swift
//  AccessWindowApp
//
//  Created by Pavel Lazarev Macbook on 19.08.2022.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var cityOfResidenceLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.fullAge)
        educationLabel.text = user.person.education
        cityOfResidenceLabel.text = user.person.cityOfResidence
    }
    
}
