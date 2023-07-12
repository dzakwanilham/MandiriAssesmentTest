//
//  MainViewPresenter.swift
//  MovieListApp
//
//  Created by Dz on 12/07/23.
//

import UIKit

final class MainViewPresenter {
	static func make() -> UIViewController{
		
		let storyBoard = UIStoryboard(name: "Search", bundle: nil)
		let viewController = storyBoard.instantiateViewController(withIdentifier: "MainViewController")
		
		return viewController
	}
}
