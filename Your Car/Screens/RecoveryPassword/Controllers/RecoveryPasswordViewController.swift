//
//  RecoveryPasswordViewController.swift
//  Your Car
//
//  Created by 1 on 28.07.2023.
//

import UIKit

class RecoveryPasswordViewController: UIViewController {
    
    @IBOutlet var keyTextField: UITextField!
    @IBOutlet var newPasswordTextField: UITextField!
    @IBOutlet var repeatNewPasswordTextField: UITextField!
    
    var onTapSaveNewPasswordButton: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Зміна паролю"
    }

    @IBAction func didTapSaveNewPasswordButton() {
        if newPasswordTextField.text == repeatNewPasswordTextField.text {
            onTapSaveNewPasswordButton?()
        } else {
          newPasswordTextField.jiggle()
          repeatNewPasswordTextField.jiggle()
        }
    }
}
