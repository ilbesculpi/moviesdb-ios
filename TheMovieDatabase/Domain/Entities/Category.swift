//
//  Category.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import UIKit

enum Category: String {
    
    case popular = "Popular";
    case topRated = "TopRated";
    case upcoming = "Upcoming";
    
    var iconName: String {
        switch self {
            case .popular:
                return "PopularIcon";
            case .topRated:
                return "TopRatedIcon";
            case .upcoming:
                return "UpcomingIcon";
        }
    };
    
    var icon: UIImage {
        return UIImage(named: iconName)!;
    };
    
    var title: String {
        return NSLocalizedString(rawValue, comment: "");
    };
    
}
