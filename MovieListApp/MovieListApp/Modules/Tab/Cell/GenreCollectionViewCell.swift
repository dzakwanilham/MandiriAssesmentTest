//
//  GenreCollectionViewCell.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import UIKit

class GenreCollectionViewCell: UICollectionViewCell {
	let textLabel: UILabel = {
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
		contentView.addSubview(textLabel)
		
		NSLayoutConstraint.activate([
			textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			textLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
			textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
		])
	}
}
