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
        nameLabel.text = "Name: \(user.person.name)"
        surnameLabel.text = "Surname: \(user.person.surname)"
        ageLabel.text = "My age is: \(user.person.fullAge) years old"
        educationLabel.text = "Education level is \(user.person.education)"
        cityOfResidenceLabel.text = "I live in \(user.person.cityOfResidence)"
    }
    
}
