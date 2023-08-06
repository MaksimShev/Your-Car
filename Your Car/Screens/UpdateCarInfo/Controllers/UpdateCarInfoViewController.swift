//
//  UpdateCarInfoViewController.swift
//  Your Car
//
//  Created by 1 on 08.07.2023.
//

import UIKit


class UpdateCarInfoViewController: UIViewController {
    
    @IBOutlet var brandTextField: UITextField!
    @IBOutlet var modelTextField: UITextField!
    @IBOutlet var yearTextField: UITextField!
    @IBOutlet var colorTextField: UITextField!
    @IBOutlet var mileageTextField: UITextField!
    
    var onCompleted: ((Car) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
    }
        
    private func setupTextFields() {
        brandTextField.setPlaceholderText("Brand", color: .black.withAlphaComponent(0.3))
        modelTextField.setPlaceholderText("Model", color: .black.withAlphaComponent(0.3))
        yearTextField.setPlaceholderText("Year", color: .black.withAlphaComponent(0.3))
        colorTextField.setPlaceholderText("Color", color: .black.withAlphaComponent(0.3))
        mileageTextField.setPlaceholderText("Mileage", color: .black.withAlphaComponent(0.3))
    }
    
    @IBAction private func didTapSaveButton() {
        let newCar =  Car(brand: brandTextField.text!,
                          model: modelTextField.text ?? "2023",
                          year: Int(yearTextField.text!) ?? 0,
                          color: colorTextField.text!,
                          mileage:  Int(mileageTextField.text!) ?? 0)
        onCompleted?(newCar)
    }
}


