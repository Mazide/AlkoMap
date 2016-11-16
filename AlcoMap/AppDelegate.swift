//
//  AppDelegate.swift
//  AlcoMap
//
//  Created by Nikita Demidov on 06.11.16.
//  Copyright © 2016 Nikita Demidov. All rights reserved.
//

import UIKit
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyBCFGrCp_MWTVzyIw8oTOYe8ixdEOa9ae0")
        return true
    }
}

