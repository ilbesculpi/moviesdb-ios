//
//  MainSection.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation

enum MainSection: String {
    
    case movies = "Movies";
    case series = "Series";
    
    var title: String {
        get {
            return rawValue;
        }
    };
    
}
