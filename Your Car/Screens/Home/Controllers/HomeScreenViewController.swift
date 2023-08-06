//
//  HomeScreenViewController.swift
//  Your Car
//
//  Created by 1 on 15.07.2023.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var onTapLogInButton: (() -> Void)?
    var onTapRegisterButton: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "carrr")
    }
    
    @IBAction func didTapOnLoginButton() {
        onTapLogInButton?()
    }
    
    @IBAction func didTapOnRegisterButton() {
        onTapRegisterButton?()
    }
}

