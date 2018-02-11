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
    func fetchHomeCategories(for section: MainSection) -> Observable<[MainCategory]> {
        switch( section ) {
            case .movies:
                let categories: [MainCategory] = [.popular, .topRated, .upcoming];
                return Observable.just(categories);
            case .tvShows:
                let categories: [MainCategory] = [.popular, .topRated];
                return Observable.just(categories);
        }
    }
    
    /**
     * Fetch a list of movies by category.
     */
    func fetchMovies(for category: MainCategory, page: Int) -> Observable<[Movie]> {
        switch( category ) {
            case .popular:
                return remoteStore.fetchPopularMovies(page: page, language: language);
            case .topRated:
                return remoteStore.fetchTopRatedMovies(page: page, language: language);
            case .upcoming:
                return remoteStore.fetchUpcomingMovies(page: page, language: language);
        }
    }
    
    /**
     * Fetch a list of movies by category.
     */
    func fetchShows(for category: MainCategory, page: Int) -> Observable<[TVShow]> {
        switch( category ) {
            case .popular:
                return remoteStore.fetchPopularShows(page: page, language: language);
            case .topRated:
                return remoteStore.fetchTopRatedShows(page: page, language: language);
            default:
                assertionFailure("Invalid category for tv shows (\(category)!");
                return Observable.empty();
        }
    }
    
}
