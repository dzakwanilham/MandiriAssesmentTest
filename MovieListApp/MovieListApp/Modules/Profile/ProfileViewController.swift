//
//  ProfileViewController.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import UIKit

protocol ProfileViewProtocol: AnyObject {
		// Define the view protocol methods here
}

class ProfileViewController: UIViewController {
	var presenter: ProfilePresenterProtocol!
	
	private let avatarImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.contentMode = .scaleAspectFit
		imageView.translatesAutoresizingMaskIntoConstraints = false
		return imageView
	}()
	
	private let nameLabel: UILabel = {
		let label = UILabel()
		label.textAlignment = .center
		label.font = UIFont.boldSystemFont(ofSize: 24)
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
		presenter.viewDidLoad()
	}
	
	private func setupUI() {
		view.backgroundColor = .white
		
		view.addSubview(avatarImageView)
		NSLayoutConstraint.activate([
			avatarImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			avatarImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			avatarImageView.widthAnchor.constraint(equalToConstant: 100),
			avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor)
		])
		
		view.addSubview(nameLabel)
		NSLayoutConstraint.activate([
			nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 20),
			nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
		])
	}
}

extension ProfileViewController: ProfileViewProtocol {
		// Implement the view protocol methods here
}
