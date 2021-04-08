//
//  TestingAppDelegate.swift
//  AppLaunchTests
//
//  Created by Rafael Nunes Rios on 4/7/21.
//

import UIKit

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(">> Launching with real app delegate")
        return true
    }

}


