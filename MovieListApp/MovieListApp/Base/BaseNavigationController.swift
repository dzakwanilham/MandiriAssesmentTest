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
		UITabBar.appearance().barTintColor = .lightGray
		UITabBar.appearance().tintColor = .black
		UITabBar.appearance().backgroundColor = .darkGray
	}
	
	fileprivate func configureNavigationBar() {
		UINavigationBar.appearance().barTintColor = .lightGray
		UINavigationBar.appearance().tintColor = .gray
		UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.black]
	}
}
