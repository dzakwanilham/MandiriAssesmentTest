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
		let homeIcon = UITabBarItem(title: "Genre", image: UIImage(named: "home"), tag: 0)
		
		homeIcon.standardAppearance?.selectionIndicatorImage
		genreTab.tabBarItem = homeIcon
		
		self.view.backgroundColor = .darkGray
		
		self.setViewControllers([genreTab], animated: true)
	}

}

extension MainViewController: UITabBarControllerDelegate {
	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
	}
}

