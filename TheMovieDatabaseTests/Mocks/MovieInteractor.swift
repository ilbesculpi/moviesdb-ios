// MARK: - Mocks generated from file: TheMovieDatabase/Persistence/Interactors/MovieInteractor.swift at 2018-02-08 04:41:42 +0000

//
//  MovieInteractor.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Cuckoo
@testable import TheMovieDatabase

import RxCocoa
import RxSwift
import UIKit

class MockMovieInteractor: MovieInteractor, Cuckoo.Mock {
    typealias MocksType = MovieInteractor
    typealias Stubbing = __StubbingProxy_MovieInteractor
    typealias Verification = __VerificationProxy_MovieInteractor
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: MovieInteractor?

    func spy(on victim: MovieInteractor) -> Self {
        observed = victim
        return self
    }

    

    

    
    // ["name": "fetchHomeCategories", "returnSignature": " -> Observable<[MainCategory]>", "fullyQualifiedName": "fetchHomeCategories() -> Observable<[MainCategory]>", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Observable<[MainCategory]>", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     override func fetchHomeCategories()  -> Observable<[MainCategory]> {
        
            return cuckoo_manager.call("fetchHomeCategories() -> Observable<[MainCategory]>",
                parameters: (),
                original: observed.map { o in
                    return { (args) -> Observable<[MainCategory]> in
                        let () = args
                        return o.fetchHomeCategories()
                    }
                })
        
    }
    

    struct __StubbingProxy_MovieInteractor: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func fetchHomeCategories() -> Cuckoo.StubFunction<(), Observable<[MainCategory]>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("fetchHomeCategories() -> Observable<[MainCategory]>", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_MovieInteractor: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
        @discardableResult
        func fetchHomeCategories() -> Cuckoo.__DoNotUse<Observable<[MainCategory]>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("fetchHomeCategories() -> Observable<[MainCategory]>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class MovieInteractorStub: MovieInteractor {
    

    

    
     override func fetchHomeCategories()  -> Observable<[MainCategory]> {
        return DefaultValueRegistry.defaultValue(for: Observable<[MainCategory]>.self)
    }
    
}



