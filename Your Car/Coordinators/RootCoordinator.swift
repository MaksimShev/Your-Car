//
//  RootCoordinator.swift
//  Your Car
//
//  Created by 1 on 09.07.2023.
//

import UIKit

class RootCoordinator {
    
    var rootViewController: UIViewController {
        navigationController
    }
    
    private let navigationController: UINavigationController
    
    
    init(navigationController: UINavigationController) {
        self.navigationController =  navigationController
    }
    
    func start() {
        openHomeScreen()
    }
    
    func openHomeScreen() {
        let vc = HomeScreenViewController()
        vc.onTapLogInButton = openLoginScreen
        vc.onTapRegisterButton = openRegistrationScreen
        navigationController.viewControllers.append(vc)
    }
    
    func openLoginScreen() {
        let vc = LoginInViewController()
        vc.onTapLogIn = openCarListScreen
        vc.onTapForgottenButton = openForgottePasswordScreen
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openRegistrationScreen() {
        let vc = RegistrationViewController()
        vc.onTapRegistrationButton = openTest2tableViewScreen
        navigationController.pushViewController(vc, animated: true)
    }
    
    //func openTestTableViewScreen() {
      //  let vc = ViewController()
        //navigationController.pushViewController(vc, animated: true)
    //}
    
    func openTest2tableViewScreen() {
        let vc = Test3ViewController()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openForgottePasswordScreen() {
        let vc = ForgottenPassworfViewController()
        vc.onTapRecoveryPasswordButton = openRecoveryPasswordScreen
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openRecoveryPasswordScreen() {
        let vc = RecoveryPasswordViewController()
        vc.onTapSaveNewPasswordButton = { [weak self] in
            self?.navigationController.popViewController(animated: true)
            self?.navigationController.popViewController(animated: true)
            self?.navigationController.popViewController(animated: true)
        }
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openCarListScreen() {
        let carListViewController = CarListViewController()
        carListViewController.onSelect = openCarDetailsScreen(model:)
        carListViewController.onTapAddButton = {
            self.openUpdateCarInfoScreen(callBack: { car in
                carListViewController.add(model: car)
            })
        }
        
        navigationController.pushViewController(carListViewController, animated: true)
    }
    
    func openUpdateCarInfoScreen(callBack: @escaping (Car) -> Void) {
        let vc = UpdateCarInfoViewController()
        vc.onCompleted = { [weak self] newCar in
            self?.navigationController.popViewController(animated: true)
            callBack(newCar)
        }
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openCarDetailsScreen(model: Car) {
        let vc = CarDetailsViewController(model: model)
        vc.onTapShowCarHistories = {
            self.openCarTechnicalHistoriesScreen(model: model)
        }
        vc.onTapAddHistoryButton = {
            self.openAddCarMaitenanceScreen(callback: { newHistory in
                model.carTechinalMaintenanceHistories.append(newHistory)
            })
        }
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openCarTechnicalHistoriesScreen(model: Car) {
        let vc = CarTechnicalMaintenanceHistoriesListViewController(model: model)
        vc.onTapAddButton = {
            self.openAddCarMaitenanceScreen(callback: { history in vc.add(point: history)
                
            })
        }
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openAddCarMaitenanceScreen(callback: @escaping (CarTechinalMaintenance) -> Void) {
        let vc = AddCarMaitenanceHistoryViewController()
        vc.onCompleted = { [weak self] newCarTechinalMaintenance in self?.navigationController.popViewController(animated: true)
            callback(newCarTechinalMaintenance)
        }
        navigationController.pushViewController(vc, animated: true)
    }
    
}
