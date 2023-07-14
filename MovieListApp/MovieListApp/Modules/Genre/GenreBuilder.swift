//
//  GenreBuilder.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import UIKit

final class GenreBuilder {
	static func make() -> GenresViewController {
		
		let vc = GenresViewController()
		let interactor = GenresInteractor()
		let router = GenreRouter(viewController: vc)
		let presenter = GenresPresenter(view: vc, interactor: interactor, router: router)
		
		vc.presenter = presenter
		
		return vc
	}
}
