//
//  SceneDelegate.swift
//  Your Car
//
//  Created by 1 on 08.07.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let coordinator = RootCoordinator(navigationController: UINavigationController())
        coordinator.start()
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = coordinator.rootViewController
        window?.makeKeyAndVisible()
    }
}

