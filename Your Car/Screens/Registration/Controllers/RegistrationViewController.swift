//
//  RegistrationScreenViewController.swift
//  Your Car
//
//  Created by 1 on 15.07.2023.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var phoneTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var repeatTextField: UITextField!
    
    var onTapRegistrationButton: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Реєстрація"

    }

    @IBAction func didTapRegistrationButton() {
        onTapRegistrationButton?()
    }
}
