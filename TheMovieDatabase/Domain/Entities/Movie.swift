//
//  Movie.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation

struct Movie {

    var id: Int;
    var poster_path: String = "";
    var adult: Bool;
    var overview: String = "";
    var release_date: Date;
    var genre_ids: [Int] = [];
    var original_title: String = "";
    var original_language: String = "";
    var title: String = "";
    var backdrop_path: String = "";
    var popularity: Float;
    var vote_count: Int;
    var video: Bool;
    var vote_average: Float;
    
}
