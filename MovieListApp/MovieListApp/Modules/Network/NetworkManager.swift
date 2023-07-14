//
//  NetworkManager.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import Foundation
import Alamofire

enum APIResult<T> {
	case success(T)
	case failure(Error)
}

protocol NetworkManagerProtocol {
	func request(endpoint: String, parameters: [String: Any], completion: @escaping (APIResult<Data>) -> Void)
}

class NetworkManager: NetworkManagerProtocol {
	static let shared = NetworkManager()
	
	private init() {}
	
	func request(endpoint: String, parameters: [String: Any], completion: @escaping (APIResult<Data>) -> Void) {
		AF.request(endpoint, parameters: parameters)
			.validate()
			.responseData { response in
				switch response.result {
					case .success(let data):
						completion(.success(data))
					case .failure(let error):
						completion(.failure(error))
				}
			}
	}
}

