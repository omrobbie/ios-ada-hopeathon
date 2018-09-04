//
//  AppDelegate.swift
//  Hopeathon
//
//  Created by omrobbie on 03/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit
import Firebase


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        FirebaseApp.configure()
        
        return true
    }
}
