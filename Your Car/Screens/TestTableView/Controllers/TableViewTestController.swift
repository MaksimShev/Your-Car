//
//  2ViewController.swift
//  Your Car
//
//  Created by 1 on 04.08.2023.
//

import UIKit

class TableViewTestController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var model: [CarTechinalMaintenance] = [
    CarTechinalMaintenance(comment: "Hello", date: "12 tc", mileage: 287635)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
}


extension TableViewTestController: UITableViewDelegate {}

extension TableViewTestController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Reuse")
        let currentModel = model[indexPath.row]
        cell.textLabel?.text = currentModel.comment
        cell.detailTextLabel?.text = currentModel.date
        
        
        return cell
    }
    
    
}
