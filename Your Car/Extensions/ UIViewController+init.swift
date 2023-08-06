//
//  UIViewController+init.swift
//  Your Car
//
//  Created by 1 on 08.07.2023.
//

import UIKit


extension UIViewController {
    
    convenience init(bundle: Bundle) {
        self.init(nibName: "\(Self.self)", bundle: nil)
    }
    
}
