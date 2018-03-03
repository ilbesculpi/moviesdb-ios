//
//  MovieListRouter.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 3/2/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class MovieListRouter: BaseRouter, MovieListRouterContract {
	
	weak var view: MovieListViewController!
	weak var movie: Movie?
	
	override func prepare(for segue: UIStoryboardSegue) {
		if( segue.identifier == "sw_movie_detail" ) {
			// configure movie detail controller
			let movieDetailController = segue.destination as! MovieDetailViewController;
			MovieDetailConfigurator.configure(movieDetailController, movie: movie!);
		}
	}
	
	func navigateToMovieDetail(movie: Movie) {
		self.movie = movie;
		view.performSegue(withIdentifier: "sw_movie_detail", sender: nil);
	}
	
	
}
