//
//  CarListViewController.swift
//  Your Car
//
//  Created by 1 on 08.07.2023.
//

import UIKit

func test() {
    let vc = CarListViewController(models: [])
    
    
}

class CarListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var onSelect: ((Car) -> Void)?
    var onTapAddButton: (() -> Void)?
    
    private var models: [Car]
    
    
    init(models: [Car]) {
        self.models = models
        super.init(nibName: "CarListViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My car"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAddButton))
    }
    
    func add(model: Car) {
        models.append(model)
        tableView.reloadData()
    }
    
    @objc private func didTapAddButton() {
        onTapAddButton?()
    }
}

extension CarListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "carCell")
        let currentModel = models[indexPath.row]
        cell.textLabel?.text = currentModel.brand
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let currentModel = models[indexPath.row]
        onSelect?(currentModel)
    }
}
