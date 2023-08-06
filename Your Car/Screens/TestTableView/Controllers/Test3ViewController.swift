//
//  Test3ViewController.swift
//  Your Car
//
//  Created by 1 on 05.08.2023.
//

import UIKit

class Test3ViewController: UIViewController {
    
    let model = [
    Car(brand: "MAX", model: "", year: 2, color: "", mileage: 2)
    ]
    
    @IBOutlet var tableView: UITableView!


}

extension Test3ViewController: UITableViewDelegate {}

extension Test3ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "TEST")
        let currentModel = model[indexPath.row]
        cell.textLabel?.text = currentModel.brand
        return cell
    }
    
    
}
