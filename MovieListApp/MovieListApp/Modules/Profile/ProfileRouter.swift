//
//  ProfileRouter.swift
//  MovieListApp
//
//  Created by Dz on 14/07/23.
//

import Foundation
import UIKit

protocol ProfileRouterProtocol {
		// Define the router protocol methods here
}

class ProfileRouter: ProfileRouterProtocol {
	weak var view: UIViewController?
	
	init(view: UIViewController) {
		self.view = view
	}
	
		// Implement the router protocol methods here
}
