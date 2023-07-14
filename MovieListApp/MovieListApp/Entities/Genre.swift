//
//  Genre.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import Foundation

class Genre {
	let id: Int
	let name: String
	
	init(id: Int, name: String) {
		self.id = id
		self.name = name
	}
	
	convenience init?(json: [String: Any]) {
		guard let id = json["id"] as? Int,
			  let name = json["name"] as? String else {
			return nil
		}
		
		self.init(id: id, name: name)
	}
}
