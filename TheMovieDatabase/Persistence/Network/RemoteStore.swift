//
//  RemoteStore.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/8/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import RxAlamofire
import ObjectMapper

class RemoteStore: RemoteStoreContract {
    
    var apiKey: String = "7f8661a70a2785177ff438102e23a9aa";
    var baseUrl: String = "https://api.themoviedb.org/3";

    private func endPoint(_ path: String, page: Int, language: String) -> String {
        return "\(baseUrl)/\(path)?api_key=\(apiKey)&language=\(language)&page=\(page)";
    }
    
    func fetchMovies(_ endPointUrl: String) -> Observable<[Movie]> {
        return RxAlamofire.requestJSON(.get, endPointUrl)
            .map({ (response, json) -> [Movie] in
                if let dict = json as? [String : AnyObject] {
                    if let results = dict["results"] as? [[String: AnyObject]] {
                        let moviesArray = Mapper<Movie>().mapArray(JSONArray: results);
                        return moviesArray;
                    }
                }
                return [];
            });
    }
    
    /**
     * Fetch a list of popular movies from the themoviedb.org API.
     */
    func fetchPopularMovies(page: Int, language: String) -> Observable<[Movie]> {
        let endPointUrl: String = endPoint("movie/popular", page: page, language: language);
        return fetchMovies(endPointUrl);
    }
    
    /**
     * Fetch a list of top rated movies from the themoviedb.org API.
     */
    func fetchTopRatedMovies(page: Int, language: String) -> Observable<[Movie]> {
        let endPointUrl: String = endPoint("movie/top_rated", page: page, language: language);
        return fetchMovies(endPointUrl);
    }
    
    /**
     * Fetch a list of upcoming movies from the themoviedb.org API.
     */
    func fetchUpcomingMovies(page: Int, language: String) -> Observable<[Movie]> {
        let endPointUrl: String = endPoint("movie/upcoming", page: page, language: language);
        return fetchMovies(endPointUrl);
    }
    
}
