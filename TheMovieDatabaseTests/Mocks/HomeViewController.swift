// MARK: - Mocks generated from file: TheMovieDatabase/UI/MovieList/MovieListPresenter.swift at 2018-02-08 04:41:42 +0000

//
//  MovieListPresenter.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Cuckoo
@testable import TheMovieDatabase

import UIKit

class MockMovieListPresenter: MovieListPresenter, Cuckoo.Mock {
    typealias MocksType = MovieListPresenter
    typealias Stubbing = __StubbingProxy_MovieListPresenter
    typealias Verification = __VerificationProxy_MovieListPresenter
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: MovieListPresenter?

    func spy(on victim: MovieListPresenter) -> Self {
        observed = victim
        return self
    }

    

    

    

    struct __StubbingProxy_MovieListPresenter: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
    }


    struct __VerificationProxy_MovieListPresenter: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
    }


}

 class MovieListPresenterStub: MovieListPresenter {
    

    

    
}



