//
//  MovieInteractor.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class MovieInteractor: MovieInteractorContract {
    
    var remoteStore: RemoteStoreContract!
    var language: String = "en_US";

    /**
     * Fetch a list of categories to display on the Home Screen.
     */
    func fetchHomeCategories() -> Observable<[MainCategory]> {
        return Observable.just([
            MainCategory.popular,
            MainCategory.topRated,
            MainCategory.upcoming
        ]);
    }
    
    func fetchMovies(for category: MainCategory, page: Int) -> Observable<[Movie]> {
        switch( category ) {
            case .popular:
                return remoteStore.fetchPopularMovies(page: page, language: language);
            case .topRated:
                return remoteStore.fetchPopularMovies(page: page, language: language);
            case .upcoming:
                return remoteStore.fetchUpcomingMovies(page: page, language: language);
        }
    }
    
}
