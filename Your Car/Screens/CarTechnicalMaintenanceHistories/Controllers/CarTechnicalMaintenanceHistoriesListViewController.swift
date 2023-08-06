//
//  CarTechnicalMaintenanceHistoriesViewController.swift
//  Your Car
//
//  Created by 1 on 09.07.2023.
//

import UIKit

class CarTechnicalMaintenanceHistoriesListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    private let model: Car
    
    var onSelect: ((CarTechinalMaintenance) -> Void)?
    var onTapAddButton: (() -> Void)?
    
    init(model: Car) {
        self.model = model
        super.init(nibName: "CarTechnicalMaintenanceHistoriesListViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Histories"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAddButton))
    }
    
    func add(point: CarTechinalMaintenance) {
        model.carTechinalMaintenanceHistories.append(point)
        tableView.reloadData()
    }
    
    @objc private func didTapAddButton() {
        onTapAddButton?()
    }
}

extension CarTechnicalMaintenanceHistoriesListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.carTechinalMaintenanceHistories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "historiesCell")
        let currentHistory =  model.carTechinalMaintenanceHistories[indexPath.row]
        cell.textLabel?.text = currentHistory.date
        cell.detailTextLabel?.text = currentHistory.comment
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       tableView.deselectRow(at: indexPath, animated: true)
       let currentPoint =  model.carTechinalMaintenanceHistories[indexPath.row]
       onSelect?(currentPoint)
   }
}
