//
//  HomeConfigurator.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation

class HomeConfigurator {
    
    class func configure(_ view: HomeViewController, section: MainSection) {
        let presenter = HomePresenter();
        view.presenter = presenter;
        view.section = section;
        presenter.view = view;
        presenter.interactor = MovieInteractor();
    }
    
}
