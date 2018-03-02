//
//  TVShowListContracts.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/8/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation

protocol TVShowListViewContract: BaseViewContract {
    
    var presenter: TVShowListPresenterContract? { get set };
    
    func display(category: Criteria);
    func display(shows: [TVShow]);
    
}

protocol TVShowListPresenterContract: BasePresenterContract {
    
    weak var view: TVShowListViewContract! { get set }
    var page: Int { get set }
    var category: Criteria! { get set }
    
}
