//
//  AppRouter.swift
//  MovieListApp
//
//  Created by Dz on 12/07/23.
//

import UIKit

final class AppRouter{
	let window: UIWindow
	
	init() {
		window = UIWindow(frame: UIScreen.main.bounds)
	}
	
	func launchMainView() {
		let viewController = MainViewPresenter.make()
		let navigationController = BaseNavigationController(rootViewController: viewController)
		window.rootViewController = navigationController
		window.makeKeyAndVisible()
	}
	
}
