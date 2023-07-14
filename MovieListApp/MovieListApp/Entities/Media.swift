//
//  Media.swift
//  MovieListApp
//
//  Created by Dz on 13/07/23.
//

import Foundation

class Media {
	let title: String
	let posterPath: String
	let overview: String

	init(title: String, posterPath: String, overview: String) {
		self.title = title
		self.posterPath = posterPath
		self.overview = overview
	}
	
	convenience init?(json: [String: Any]) {

		guard let title = json["title"] as? String,
			  let posterPath = json["poster_path"] as? String,
			  let overview = json["overview"] as? String else {
			return nil
		}
		
		self.init(title: title, posterPath: posterPath, overview: overview)
	}
}
