//
//  AppDelegate.swift
//  Decorator_Medium
//
//  Created by Rav on 23/12/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        navigationController = UINavigationController(rootViewController: ViewController<ViewControllerInjector>())
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}
