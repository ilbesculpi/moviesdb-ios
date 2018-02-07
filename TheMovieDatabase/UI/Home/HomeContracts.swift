//
//  HomeContracts.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import UIKit

protocol HomeViewContract: AnyObject {
    
    var presenter: HomePresenterContract? { get set };
    
    func displayCategories(_ categories: [MainCategory]);
    
}

protocol HomePresenterContract: BasePresenterContract {
    
    weak var view: HomeViewContract! { get set }
    
}
