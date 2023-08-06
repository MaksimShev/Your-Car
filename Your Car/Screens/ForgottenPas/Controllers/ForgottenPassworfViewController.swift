//
//  ForgottenPassworfViewController.swift
//  Your Car
//
//  Created by 1 on 28.07.2023.
//

import UIKit

class ForgottenPassworfViewController: UIViewController {

    @IBOutlet var emailOrPhoneTextField: UITextField!
    @IBOutlet var keyTextField: UITextField!
    @IBOutlet var captchaImageView: UIImageView!
    
    var onTapRecoveryPasswordButton: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Відновлення паролю"

    }
    
    @IBAction func didTapRecoveryPasswordButton() {
        onTapRecoveryPasswordButton?()
    }
}
