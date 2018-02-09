//
//  MovieListConfigurator.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/8/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class MovieListConfigurator: NSObject {

    class func configure(_ view: MovieListViewController, category: MainCategory) {
        
        let presenter = MovieListPresenter();
        let interactor = MovieInteractor();
        interactor.remoteStore = RemoteStore();
        presenter.interactor = interactor;
        presenter.view = view;
        presenter.category = category;
        
        view.presenter = presenter;
    }
    
}
