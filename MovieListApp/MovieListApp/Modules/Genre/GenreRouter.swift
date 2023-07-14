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
		
	func pushToMovieScreen(genreId: Int) {
		let movieScreen = MovieListRouter.setupModule()
		viewController?.navigationController?.pushViewController(movieScreen, animated: true)
	}
}
