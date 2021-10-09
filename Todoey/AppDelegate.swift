//
//  AppDelegate.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        print(Realm.Configuration.defaultConfiguration.fileURL)
        do {
            _ = try Realm()
        } catch {
            print("Error creating realm database.")
        }
        
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
    }
}


