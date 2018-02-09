//
//  InteractorContracts.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

protocol MovieInteractorContract {
    
    /**
     * Fetch a list of categories to display on the Home Screen.
     */
    func fetchHomeCategories(for section: MainSection) -> Observable<[MainCategory]>;
    
    /**
     * Fetch a list of movies by category.
     */
    func fetchMovies(for category: MainCategory, page: Int) -> Observable<[Movie]>;
    
    /**
     * Fetch a list of shows by category.
     */
    func fetchShows(for category: MainCategory, page: Int) -> Observable<[TVShow]>;
    
}
