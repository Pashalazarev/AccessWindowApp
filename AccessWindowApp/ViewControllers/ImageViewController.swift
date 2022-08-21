//
//  ImageViewController.swift
//  AccessWindowApp
//
//  Created by Pavel Lazarev Macbook on 19.08.2022.
//

import UIKit

class ImageViewController: UIViewController {

    
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 10
    }
}
