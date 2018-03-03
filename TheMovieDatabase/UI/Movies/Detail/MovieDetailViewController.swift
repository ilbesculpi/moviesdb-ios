//
//  MovieDetailViewController.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class MovieDetailViewController: BaseViewController, MovieDetailViewContract {

	// MARK: - Properties
	
	var presenter: MovieDetailPresenterContract?
	
	var router: MovieDetailRouterContract?
	
	
	// MARK: - IBOutlet
	
	@IBOutlet weak var labelTitle: UILabel!
	@IBOutlet weak var imagePoster: UIImageView!
	@IBOutlet weak var imageBackdrop: UIImageView!
	
	
	// MARK: - BaseViewController
	
    override func viewDidLoad() {
        super.viewDidLoad();
		presenter?.viewDidLoad();
    }
	
	// MARK: - MovieDetailViewContract

	func display(movie: Movie) {
		labelTitle.text = movie.title;
	}
	
}
