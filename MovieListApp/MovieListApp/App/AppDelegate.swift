//
//  AppDelegate.swift
//  MovieListApp
//
//  Created by Dz on 12/07/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        app.router.launchMainView()
		
        return true
    }


}
