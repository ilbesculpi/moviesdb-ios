//
//  HomeRouter.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class HomeRouter: NSObject {
    
    weak var view: HomeViewController?
    var section: Section?
    private var category: Criteria?

    func navigateToMovieList(category: Criteria) {
        self.category = category;
        view?.performSegue(withIdentifier: "sw_movie_list", sender: nil);
    }
    
    func navigateToShowList(category: Criteria) {
        self.category = category;
        view?.performSegue(withIdentifier: "sw_tv_show_list", sender: nil);
    }
    
    func prepare(for segue: UIStoryboardSegue) {
        if( segue.identifier == "sw_movie_list" ) {
            // configure movie list controller
            let movieListController = segue.destination as! MovieListViewController;
            MovieListConfigurator.configure(movieListController, category: category!);
        }
        else if( segue.identifier == "sw_tv_show_list" ) {
            // configure tv show list controller
            let tvShowListController = segue.destination as! TVShowListViewController;
            TVShowListConfigurator.configure(tvShowListController, category: category!);
        }
    }
    
}
