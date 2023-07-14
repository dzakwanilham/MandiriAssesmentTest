//
//  Media.swift
//  MovieListApp
//
//  Created by Dz on 13/07/23.
//

import Foundation

class Media: Codable {
	let adult: Bool
	let backdropPath: String?
	let genreIDs: [Int]
	let id: Int
	let originalLanguage: String
	let originalTitle: String
	let overview: String
	let popularity: Double
	let posterPath: String?
	let releaseDate: String
	let title: String
	let video: Bool
	let voteAverage: Double
	let voteCount: Int
	
	enum CodingKeys: String, CodingKey {
		case adult
		case backdropPath = "backdrop_path"
		case genreIDs = "genre_ids"
		case id
		case originalLanguage = "original_language"
		case originalTitle = "original_title"
		case overview
		case popularity
		case posterPath = "poster_path"
		case releaseDate = "release_date"
		case title
		case video
		case voteAverage = "vote_average"
		case voteCount = "vote_count"
	}
	
	init(adult: Bool, backdropPath: String?, genreIDs: [Int], id: Int, originalLanguage: String, originalTitle: String, overview: String, popularity: Double, posterPath: String?, releaseDate: String, title: String, video: Bool, voteAverage: Double, voteCount: Int) {
		self.adult = adult
		self.backdropPath = backdropPath
		self.genreIDs = genreIDs
		self.id = id
		self.originalLanguage = originalLanguage
		self.originalTitle = originalTitle
		self.overview = overview
		self.popularity = popularity
		self.posterPath = posterPath
		self.releaseDate = releaseDate
		self.title = title
		self.video = video
		self.voteAverage = voteAverage
		self.voteCount = voteCount
	}
}
