//
//  MovieCollectionViewCell.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import Foundation
import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
		// UI Components
	private let titleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = UIFont.boldSystemFont(ofSize: 16)
		label.textColor = .black
		label.textAlignment = .center
		return label
	}()
	
	private let posterImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.translatesAutoresizingMaskIntoConstraints = false
		imageView.contentMode = .scaleAspectFit
		return imageView
	}()
	
		// Initialization
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupViews()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
		// Configure cell with movie data
	func configure(with media: Media) {
		titleLabel.text = media.title
		posterImageView.image = UIImage(named: media.posterPath ?? "")
	}
	
		// Setup cell's subviews and constraints
	private func setupViews() {
			// Add subviews to the cell's content view
		contentView.addSubview(titleLabel)
		contentView.addSubview(posterImageView)
		
			// Configure constraints for the subviews
		NSLayoutConstraint.activate([
			posterImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
			posterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			posterImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			posterImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.8),
			
			titleLabel.topAnchor.constraint(equalTo: posterImageView.bottomAnchor, constant: 4),
			titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
		])
	}
}
