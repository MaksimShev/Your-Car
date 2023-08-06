//
//  NewViewController.swift
//  Your Car
//
//  Created by 1 on 05.08.2023.
//

import UIKit

class NewViewController: UIViewController {
    
    
    var model: [Car] = [
    Car(brand: "lkl/", model: ",h", year: 1567, color: "jhvhj", mileage: 135)]
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}


extension NewViewController: UITableViewDelegate {
    
}

