//
//  Movie.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import ObjectMapper

class Movie: Mappable {
    
    var id: Int?
    var poster_path: String?
    var adult: Bool?
    var overview: String?
    var release_date: Date?
    var genre_ids: [Int] = [];
    var original_title: String?
    var original_language: String?
    var title: String?
    var backdrop_path: String?
    var popularity: Float?
    var vote_count: Int?
    var video: Bool?
    var vote_average: Float?
    
    init() {
        
    }
    
    required init?(map: Map) {
        id <- map["id"]
        poster_path <- map["poster_path"]
        adult <- map["adult"]
        overview <- map["overview"]
        original_title <- map["original_title"]
        title <- map["title"]
        backdrop_path <- map["backdrop_path"]
        popularity <- map["popularity"]
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        poster_path <- map["poster_path"]
        adult <- map["adult"]
        overview <- map["overview"]
    }
    
    var posterUrl: String? {
        get {
            if let path = self.poster_path {
                return "https://image.tmdb.org/t/p/w600_and_h900_bestv2\(path)";
            }
            return nil;
        }
    };
    
    var backdropUrl: String? {
        get {
            if let path = self.backdrop_path {
                return "https://image.tmdb.org/t/p/w600_and_h900_bestv2\(path)";
            }
            return nil;
        }
    };
    
}
