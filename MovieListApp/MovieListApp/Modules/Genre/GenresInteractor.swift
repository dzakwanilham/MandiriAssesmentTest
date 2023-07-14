//
//  GenresInteractor.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import Foundation
import SwiftyJSON

protocol GenreInteractorToPresenterProtocol: AnyObject {
	func didFetchGenres(_ genres: [Genre])
	func didFailToFetchGenres(with error: Error)
}

enum NetworkError: Error {
	case invalidResponse
	case invalidParameters
}

class GenresInteractor {
	
	private let networkManager: NetworkManagerProtocol
	var presenter: GenresInteractorInterface?

	init(networkManager: NetworkManagerProtocol = NetworkManager.shared) {
		self.networkManager = networkManager
	}
	
	func fetchGenres() {
		let endpoint = "https://api.themoviedb.org/3/genre/movie/list"
		let parameters = ["api_key": "5f90101299a75502e1e1a50797ed9ebc"]
				
		networkManager.request(endpoint: endpoint, parameters: parameters) { [weak self] result in
			switch result {
				case .success(let data):
					let json = JSON(data)
					if let genresJSON = json["genres"].array {
						let genres = genresJSON.compactMap { Genre(json: $0.dictionaryObject ?? ["":""]) }
						self?.presenter?.genresFetched(genres)
					} else {
						self?.presenter?.genresFetchFailed(NetworkError.invalidResponse)
					}
				case .failure(let error):
					self?.presenter?.genresFetchFailed(error)
			}
		}
	}
}
