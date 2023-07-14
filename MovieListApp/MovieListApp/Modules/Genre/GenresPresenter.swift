//
//  GenresPresenter.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import Foundation
import UIKit

protocol GenresPresenterProtocol {
	func fetchGenres()
	func showMovieController(genreId: Int)
}

protocol GenresInteractorInterface: AnyObject {
	func genresFetched(_ genres: [Genre])
	func genresFetchFailed(_ error: Error)
}

protocol GenresRouterProtocol {
	func pushToMovieScreen(genreId: Int)
}

class GenresPresenter: GenresPresenterProtocol {
	private var view: GenresViewProtocol?
	private var interactor: GenresInteractor?
	private var router: GenresRouterProtocol?
		
	init(view: GenresViewProtocol,
		 interactor: GenresInteractor,
		 router: GenresRouterProtocol) {
		
		self.view = view
		self.interactor = interactor
		self.router = router
		
		self.interactor?.presenter = self
		
	}

	
	func fetchGenres() {
		interactor?.fetchGenres()
	}
	
	func showMovieController(genreId: Int) {
		
		//guard let navigationController =
		
		router?.pushToMovieScreen(genreId: genreId)
	}
}

extension GenresPresenter: GenresInteractorInterface {
	func genresFetched(_ genres: [Genre]) {
		view?.showGenres(genres)
	}
	
	func genresFetchFailed(_ error: Error) {
		view?.showError(error)
	}
}
