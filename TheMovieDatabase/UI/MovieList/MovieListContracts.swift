//
//  MovieListContracts.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import UIKit

protocol MovieListViewContract: AnyObject {
    
    var presenter: MovieListPresenterContract? { get set };
    
    func display(category: MainCategory);
    func display(movies: [Movie]);
    
}

protocol MovieListPresenterContract: BasePresenterContract {
    
    weak var view: HomePresenterContract! { get set }
    
}
