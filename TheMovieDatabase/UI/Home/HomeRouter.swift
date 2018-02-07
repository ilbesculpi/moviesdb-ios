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
    var section: MainSection?
    private var selectedCategory: MainCategory?

    func navigateToMovieList(category: MainCategory) {
        view?.performSegue(withIdentifier: "sw_movie_list", sender: nil);
        selectedCategory = category;
    }
    
    func prepare(for segue: UIStoryboardSegue) {
        if( segue.identifier == "sw_movie_list" ) {
            // configure movie list controller
            let movieListController = segue.destination as! MovieListViewController;
        }
    }
    
}
