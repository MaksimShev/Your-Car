//
//  UITextField+setPlaceholderText.swift
//  Your Car
//
//  Created by 1 on 09.07.2023.
//

import UIKit


extension UITextField {
    
    func setPlaceholderText(_ text: String, color: UIColor) {
        attributedPlaceholder = NSAttributedString(
            string: text,
            attributes: [NSAttributedString.Key.foregroundColor: color]
        )
    }
    
}

