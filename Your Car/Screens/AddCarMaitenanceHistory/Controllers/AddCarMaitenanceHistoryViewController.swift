//
//  CreateCarMaitenancePointViewController.swift
//  Your Car
//
//  Created by 1 on 12.07.2023.
//

import UIKit

class AddCarMaitenanceHistoryViewController: UIViewController {

    @IBOutlet var commentTextField: UITextField!
    @IBOutlet var dateTextField: UITextField!
    @IBOutlet var mileageTextField: UITextField!
    
    var onCompleted: ((CarTechinalMaintenance) -> Void)?
    
    @IBAction func didTapOnSaveButton() {
        let newMaitenance = CarTechinalMaintenance(
            comment: commentTextField.text!,
            date: dateTextField.text!,
            mileage: Int(mileageTextField.text!) ?? 0)
        onCompleted?(newMaitenance)
    }
}
