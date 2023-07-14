//
//  ProfilePresenter.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import Foundation

protocol ProfilePresenterProtocol {
	func viewDidLoad()
}

class ProfilePresenter: ProfilePresenterProtocol {
	private weak var view: ProfileViewProtocol?
	
	init(view: ProfileViewProtocol) {
		self.view = view
	}
	
	func viewDidLoad() {
			// Implement the necessary logic and UI updates here
	}
}
