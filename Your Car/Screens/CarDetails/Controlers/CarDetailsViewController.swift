//
//  CarDetailsViewController.swift
//  Your Car
//
//  Created by 1 on 08.07.2023.
//

import UIKit
import UserNotifications



class CarDetailsViewController: UIViewController {
    
    @IBOutlet var brandLabel: UILabel!
    @IBOutlet var modelLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var colorLabel: UILabel!
    @IBOutlet var mileageLabel: UILabel!
    @IBOutlet var showCarHistoriesButton: UIButton!
    
    var onTapShowCarHistories: (() -> Void)?
    var onTapAddHistoryButton: (() -> Void)?
    
    private let model: Car
    
    init(model: Car) {
        self.model = model
        super.init(nibName: "CarDetailsViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brandLabel.text = model.brand
        modelLabel.text = model.model
        yearLabel.text = "\(model.year)"
        colorLabel.text = model.color
        mileageLabel.text = "\(model.mileage)"
        showCarHistoriesButton.layer.cornerRadius = 10
    }
    
    @IBAction private func didTapShowCarHistoriesButton() {
        onTapShowCarHistories?()
        requestNotification()
    }
    
    @IBAction private func didTapAddHistoryButton() {
        onTapAddHistoryButton?()
        self.showNotifiaciton()
    }
    
    
    private func requestNotification() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                print("All set!")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    private func showNotifiaciton() {
        let content = UNMutableNotificationContent()
        content.title = "Maxim genius"
        content.subtitle = "Maxim  very genius"
        
        // show this notification five seconds from now
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)

        //        // add our notification request
        let request = UNNotificationRequest(identifier:  UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }

}
