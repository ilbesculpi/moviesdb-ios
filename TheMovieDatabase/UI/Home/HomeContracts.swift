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
    
    var presenter: HomePresenterContract? { get set }
	var router: HomeRouterContract? { get set }
    
    func display(categories: [Criteria]);
    func display(section: Section);
    
}

protocol HomePresenterContract: BasePresenterContract {
    
    weak var view: HomeViewContract! { get set }
    var section: Section! { get set }
    
}

protocol HomeRouterContract: BaseRouterContract {
	
	func navigateToMovieList(category: Criteria);
	func navigateToShowList(category: Criteria);
	
}
