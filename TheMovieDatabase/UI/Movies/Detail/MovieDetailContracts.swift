//
//  MovieDetailContracts.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 3/2/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import UIKit

protocol MovieDetailViewContract: BaseViewContract {
	
	var presenter: MovieDetailPresenterContract? { get set }
	var router: MovieDetailRouterContract? { get set }
	
	func display(movie: Movie);
	
}

protocol MovieDetailPresenterContract: BasePresenterContract {
	
	weak var view: MovieDetailViewContract! { get set }
	
	var movie: Movie! { get set }
	
}

protocol MovieDetailRouterContract: BaseRouterContract {
	
	
	
}
