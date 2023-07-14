//
//  GenreRouter.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import UIKit

class GenreRouter: GenresRouterProtocol {
	
	weak var viewController: UIViewController?
	var presenter: GenresPresenterProtocol?
	
	init(viewController: UIViewController) {
		self.viewController = viewController
	}
		
	func pushToMovieScreen(genreId: Int) {
		let movieScreen = MovieListRouter.setupModule()
		movieScreen.genreId = "\(genreId)"
		
		viewController?.present(movieScreen, animated: true, completion: nil)

	}
}
