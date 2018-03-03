//
//  MovieListConfigurator.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/8/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class MovieListConfigurator: NSObject {
    
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
    
    class func configurePresenter(view: MovieListViewController) -> MovieListPresenter {
        let presenter = MovieListPresenter();
        presenter.interactor = configureInteractor();
        presenter.view = view;
        return presenter;
    }
	
	class func configureRouter(view: MovieListViewController) -> MovieListRouter {
		let router = MovieListRouter();
		router.view = view;
		return router;
	}

    class func configure(_ view: MovieListViewController, category: Criteria) {
        let presenter = configurePresenter(view: view);
        presenter.category = category;
        view.presenter = presenter;
		view.router = configureRouter(view: view);
    }
    
}
