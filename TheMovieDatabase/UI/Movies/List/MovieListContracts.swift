//
//  MovieListContracts.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import UIKit

protocol MovieListViewContract: BaseViewContract {
    
    var presenter: MovieListPresenterContract? { get set }
	var router: MovieListRouterContract? { get set }
	
    func display(category: Criteria);
    func display(movies: [Movie]);
    
}

protocol MovieListPresenterContract: BasePresenterContract {
    
    weak var view: MovieListViewContract! { get set }
	
    var page: Int { get set }
    var category: Criteria! { get set }
    
}

protocol MovieListRouterContract: BaseRouterContract {
	
	func navigateToMovieDetail(movie: Movie);
	
}
