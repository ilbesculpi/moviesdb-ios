//
//  HomeConfigurator.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation

class HomeConfigurator {
    
    class func configure(_ view: HomeViewController, section: Section) {
        let presenter = HomePresenter();
        presenter.view = view;
        presenter.section = section;
        presenter.interactor = MovieInteractor();
        
        let router = HomeRouter();
        router.view = view;
        
        view.presenter = presenter;
        view.router = router;
    }
    
}
