//
//  Section.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation

enum Section: String {
    
    case movies = "Movies";
    case tvShows = "TVShows";
    
    var title: String {
        get {
            return NSLocalizedString(rawValue, comment: "");
        }
    };
    
}
