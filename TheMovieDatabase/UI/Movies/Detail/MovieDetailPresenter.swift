//
//  MovieDetailPresenter.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 3/2/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class MovieDetailPresenter: BasePresenter, MovieDetailPresenterContract {

	weak var view: MovieDetailViewContract!
	var interactor: MovieInteractorContract!
	var movie: Movie!
	
	override func viewDidLoad() {
		view.display(movie: movie);
	}
	
}
