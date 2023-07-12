//
//  BaseNavigationController.swift
//  MovieListApp
//
//  Created by Dz on 12/07/23.
//

import UIKit

class BaseNavigationController: UINavigationController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureNavigationBar()
		UITabBar.appearance().barTintColor = .brown
		UITabBar.appearance().tintColor = .darkGray
	}
	
	fileprivate func configureNavigationBar() {
		UINavigationBar.appearance().barTintColor = .lightGray
		UINavigationBar.appearance().tintColor = .gray
		UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.black]
	}
}
