//
//  RemoteStoreContract.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/8/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

protocol RemoteStoreContract {
    
    // MARK: - Movies
    func fetchPopularMovies(page: Int, language: String) -> Observable<[Movie]>;
    func fetchTopRatedMovies(page: Int, language: String) -> Observable<[Movie]>;
    func fetchUpcomingMovies(page: Int, language: String) -> Observable<[Movie]>;
    
    // MARK: - TV Shows
    func fetchPopularShows(page: Int, language: String) -> Observable<[TVShow]>;
    func fetchTopRatedShows(page: Int, language: String) -> Observable<[TVShow]>;
    
}
