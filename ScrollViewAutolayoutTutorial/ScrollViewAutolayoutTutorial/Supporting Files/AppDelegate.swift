//
//  AppDelegate.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 21/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = RegisterViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

