//
//  MainViewController.swift
//  MovieListApp
//
//  Created by Dz on 12/07/23.
//

import UIKit

class MainViewController: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupTabs()
	}
	
	private func setupTabs() {
		
		let genreTab = GenreBuilder.make()
		let imageIcon = UIImage(named: "list-image")
		
		let homeIcon = UITabBarItem(title: "Genre", image: imageIcon, tag: 0)
		
		homeIcon.standardAppearance?.selectionIndicatorImage
		genreTab.tabBarItem = homeIcon
		
		self.view.backgroundColor = .white
		
		self.setViewControllers([genreTab], animated: true)
	}
}

extension MainViewController: UITabBarControllerDelegate {
	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
	}
}

