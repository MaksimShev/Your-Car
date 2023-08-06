//
//  Car.swift
//  Your Car
//
//  Created by 1 on 08.07.2023.
//

import Foundation

class Car {
    
    var brand: String
    var model: String
    var year: Int
    var color: String
    var mileage: Int
    var carTechinalMaintenanceHistories: [CarTechinalMaintenance]
    
    
    init(brand: String,
         model: String,
         year: Int,
         color: String,
         mileage: Int,
         carTechinalMaintenanceHistories: [CarTechinalMaintenance] = []) {
        self.brand = brand
        self.model = model
        self.year = year
        self.color = color
        self.mileage = mileage
        self.carTechinalMaintenanceHistories = carTechinalMaintenanceHistories
    }
    
}

