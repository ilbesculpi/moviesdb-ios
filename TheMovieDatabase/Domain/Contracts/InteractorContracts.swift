//
//  InteractorContracts.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

protocol MovieInteractorContract {
    
    func fetchHomeCategories() -> Observable<[MainCategory]>;
    
}
