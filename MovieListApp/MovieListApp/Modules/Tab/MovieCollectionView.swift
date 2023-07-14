//
//  MovieCollectionView.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import Foundation
import UIKit

class MovieCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
		// Properties
	var presenter: MovieCollectionPresenter?
	var movies: [Media] = []
	
		// Initialization
	required init(frame: CGRect) {
		let layout = UICollectionViewFlowLayout()
		super.init(frame: frame, collectionViewLayout: layout)
		
		delegate = self
		dataSource = self
		register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: "MovieCell")
		backgroundColor = .white
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return movies.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCollectionViewCell
		let movie = movies[indexPath.row]
		cell.configure(with: movie)
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		//presenter?.didSelectMovie(at: indexPath.row)
	}
}
