//
//  EntranceScreenViewController.swift
//  Your Car
//
//  Created by 1 on 15.07.2023.
//

import UIKit

class LoginInViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    var onTapLogIn: (() -> Void)?
    var onTapForgottenButton: (() -> Void)?
    
    var userEmail = "w12@gmail.com"
    var lastEmailTextFeildText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Вхід"
        emailTextField.delegate = self
        
    }
    
    @IBAction func didTapLogInButton() {
        if lastEmailTextFeildText == userEmail {
            onTapLogIn?()
        } else {
            emailTextField.jiggle()
        }
    }
    
    @IBAction func didTapForgottenPasswordButton() {
        onTapForgottenButton?()
    }
        
    @IBAction func didChangeEmailTextField(_ sender: UITextField) {
        guard let text = sender.text else { return }
        view.backgroundColor = text.contains("gmail.com") ? .orange : .black
        lastEmailTextFeildText = text
    }
    
    
    
    
    
}

extension LoginInViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text!.contains("@") {
            view.backgroundColor = .black
        } else {
            textField.jiggle()
        }
    }
}



