//
//  CacheStore.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/10/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import AwesomeCache

class CacheStore: CacheContract {
    
    private var cache: Cache<NSDictionary>;
    private var cacheName: String = "TMD:Cache";
    
    init() {
        cache = try! Cache<NSDictionary>(name: cacheName);
    }

    func read(_ key: String) -> NSDictionary? {
        if let value = cache.object(forKey: key) {
            return value;
        }
        return nil;
    }
    
    func write(_ key: String, value: NSDictionary, expires timeInterval: Int) {
        cache.setObject(value, forKey: key, expires: .seconds(TimeInterval(timeInterval)));
    }
    
}
