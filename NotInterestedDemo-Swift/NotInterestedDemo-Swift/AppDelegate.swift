//
//  AppDelegate.swift
//  NotInterestedDemo-Swift
//
//  Created by 白晗 on 2020/9/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let vc = ViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = vc
        window?.backgroundColor = UIColor.red
        window?.makeKeyAndVisible()
        
        return true
    }



}

