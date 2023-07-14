//
//  GenresView.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import UIKit

import UIKit

protocol GenresViewProtocol: AnyObject {
	func showGenres(_ genres: [Genre])
	func showError(_ error: Error)
}

class GenresViewController: UIViewController {
	var presenter: GenresPresenterProtocol?
	
	private var collectionView: UICollectionView!
	private var genres: [Genre] = []//[Genre(id: 01, name: "test1"), Genre(id: 02, name: "test2"), Genre(id: 03, name: "test3")]
	
	init(presentor: GenresPresenterProtocol?) {
		super.init(nibName: nil, bundle: nil)
		self.presenter = presentor
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	convenience init() {
		self.init(presentor: nil)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		presenter?.fetchGenres()
		setupCollectionView()
	}
	
	private func setupCollectionView() {
		let layout = UICollectionViewFlowLayout()
		layout.scrollDirection = .vertical
		layout.minimumInteritemSpacing = 10
		layout.minimumLineSpacing = 10
		
		collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.register(GenreCollectionViewCell.self, forCellWithReuseIdentifier: "GenreCell")
		collectionView.backgroundColor = .white
		
		view.addSubview(collectionView)
		
	}
}

extension GenresViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return genres.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenreCell", for: indexPath) as? GenreCollectionViewCell else {
			return UICollectionViewCell()
		}
		
		let genre = genres[indexPath.item]
		cell.nameLabel.text = genre.name
		cell.backgroundColor = .lightGray
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: collectionView.bounds.width - 20, height: 30)
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		
		var selectedGenre = genres[indexPath.row]
		
		presenter?.showMovieController(genreId: selectedGenre.id)
		
	}
}

extension GenresViewController: GenresViewProtocol {
	func showGenres(_ genres: [Genre]) {
		self.genres = genres
		collectionView.reloadData()
	}
	
	func showError(_ error: Error) {
			// Handle the error and show an alert or error message
	}
}

