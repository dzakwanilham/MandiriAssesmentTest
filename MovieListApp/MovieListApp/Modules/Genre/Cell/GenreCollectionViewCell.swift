//
//  GenreCollectionViewCell.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import UIKit

class GenreCollectionViewCell: UICollectionViewCell {
	let nameLabel: UILabel = {
		let label = UILabel()
		label.textAlignment = .center
		label.font = UIFont.systemFont(ofSize: 16)
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setupUI()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		setupUI()
	}
	
	private func setupUI() {
		contentView.addSubview(nameLabel)
		nameLabel.translatesAutoresizingMaskIntoConstraints = false
		nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
		nameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
		
		NSLayoutConstraint.activate([
			nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
			nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
		])
	}
}
