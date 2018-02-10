//
//  TVShow.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/8/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import ObjectMapper

class TVShow: Mappable {

    var id: Int?
    var poster_path: String?
    var popularity: Int?
    var backdrop_path: String?
    var vote_average: Float?
    var overview: String?
    var first_air_date: Date?
    var original_language: String?
    var vote_count: Int?
    var name: String?
    var original_name: String?
    
    init() {
        
    }
    
    required init?(map: Map) {
        id <- map["id"]
        poster_path <- map["poster_path"]
        popularity <- map["popularity"]
        backdrop_path <- map["backdrop_path"]
        vote_average <- map["vote_average"]
        overview <- map["overview"]
        popularity <- map["popularity"]
        original_language <- map["original_language"]
        vote_count <- map["vote_count"]
        name <- map["name"]
        original_name <- map["original_name"]
    }
    
    func mapping(map: Map) {
        
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
