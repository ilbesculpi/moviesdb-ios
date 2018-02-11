//
//  CacheContract.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/10/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

protocol CacheContract {
    
    func read(_ key: String) -> NSDictionary?;
    func write(_ key: String, value: NSDictionary, expires: Int);
    
}
