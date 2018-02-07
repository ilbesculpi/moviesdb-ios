//
//  MovieInteractor.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class MovieInteractor: MovieInteractorContract {

    /**
     * Fetch a list of categories to display on the Home Screen.
     */
    func fetchHomeCategories() -> Observable<[MainCategory]> {
        return Observable.just([
            MainCategory.popular,
            MainCategory.topRated,
            MainCategory.upcoming
        ]);
    }
    
}
