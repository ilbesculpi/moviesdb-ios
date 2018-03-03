//
//  MovieDetailConfigurator.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 3/2/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class MovieDetailConfigurator: NSObject {
	
	class func configureRemoteStore() -> RemoteStore {
		let store: RemoteStore = RemoteStore();
		store.cache = CacheStore();
		return store;
	}
	
	class func configureInteractor() -> MovieInteractor {
		let interactor = MovieInteractor();
		interactor.remoteStore = configureRemoteStore();
		return interactor;
	}
	
	class func configurePresenter(view: MovieDetailViewController) -> MovieDetailPresenter {
		let presenter = MovieDetailPresenter();
		presenter.interactor = configureInteractor();
		presenter.view = view;
		return presenter;
	}
	
	class func configureRouter(view: MovieDetailViewController) -> MovieDetailRouter {
		let router = MovieDetailRouter();
		router.view = view;
		return router;
	}
	
	class func configure(_ view: MovieDetailViewController, movie: Movie) {
		let presenter = configurePresenter(view: view);
		presenter.movie = movie;
		view.presenter = presenter;
		view.router = configureRouter(view: view);
	}
	
}
