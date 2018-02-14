// MARK: - Mocks generated from file: TheMovieDatabase/Persistence/Interactors/MovieInteractor.swift at 2018-02-13 02:12:13 +0000

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

    
    // ["name": "remoteStore", "accesibility": "", "@type": "InstanceVariable", "type": "RemoteStoreContract!", "isReadOnly": false]
     override var remoteStore: RemoteStoreContract! {
        get {
            return cuckoo_manager.getter("remoteStore", original: observed.map { o in return { () -> RemoteStoreContract! in o.remoteStore }})
        }
        
        set {
            cuckoo_manager.setter("remoteStore", value: newValue, original: observed != nil ? { self.observed?.remoteStore = $0 } : nil)
        }
        
    }
    
    // ["name": "language", "accesibility": "", "@type": "InstanceVariable", "type": "String", "isReadOnly": false]
     override var language: String {
        get {
            return cuckoo_manager.getter("language", original: observed.map { o in return { () -> String in o.language }})
        }
        
        set {
            cuckoo_manager.setter("language", value: newValue, original: observed != nil ? { self.observed?.language = $0 } : nil)
        }
        
    }
    

    

    
    // ["name": "fetchHomeCategories", "returnSignature": " -> Observable<[Criteria]>", "fullyQualifiedName": "fetchHomeCategories(for: Section) -> Observable<[Criteria]>", "parameterSignature": "for section: Section", "parameterSignatureWithoutNames": "section: Section", "inputTypes": "Section", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "section", "call": "for: section", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("for"), name: "section", type: "Section", range: CountableRange(444..<464), nameRange: CountableRange(444..<447))], "returnType": "Observable<[Criteria]>", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     override func fetchHomeCategories(for section: Section)  -> Observable<[Criteria]> {
        
            return cuckoo_manager.call("fetchHomeCategories(for: Section) -> Observable<[Criteria]>",
                parameters: (section),
                original: observed.map { o in
                    return { (args) -> Observable<[Criteria]> in
                        let (section) = args
                        return o.fetchHomeCategories(for: section)
                    }
                })
        
    }
    
    // ["name": "fetchMovies", "returnSignature": " -> Observable<[Movie]>", "fullyQualifiedName": "fetchMovies(for: Criteria, page: Int) -> Observable<[Movie]>", "parameterSignature": "for category: Criteria, page: Int", "parameterSignatureWithoutNames": "category: Criteria, page: Int", "inputTypes": "Criteria, Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "category, page", "call": "for: category, page: page", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("for"), name: "category", type: "Criteria", range: CountableRange(927..<949), nameRange: CountableRange(927..<930)), CuckooGeneratorFramework.MethodParameter(label: Optional("page"), name: "page", type: "Int", range: CountableRange(951..<960), nameRange: CountableRange(951..<955))], "returnType": "Observable<[Movie]>", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     override func fetchMovies(for category: Criteria, page: Int)  -> Observable<[Movie]> {
        
            return cuckoo_manager.call("fetchMovies(for: Criteria, page: Int) -> Observable<[Movie]>",
                parameters: (category, page),
                original: observed.map { o in
                    return { (args) -> Observable<[Movie]> in
                        let (category, page) = args
                        return o.fetchMovies(for: category, page: page)
                    }
                })
        
    }
    
    // ["name": "fetchShows", "returnSignature": " -> Observable<[TVShow]>", "fullyQualifiedName": "fetchShows(for: Criteria, page: Int) -> Observable<[TVShow]>", "parameterSignature": "for category: Criteria, page: Int", "parameterSignatureWithoutNames": "category: Criteria, page: Int", "inputTypes": "Criteria, Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "category, page", "call": "for: category, page: page", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("for"), name: "category", type: "Criteria", range: CountableRange(1462..<1484), nameRange: CountableRange(1462..<1465)), CuckooGeneratorFramework.MethodParameter(label: Optional("page"), name: "page", type: "Int", range: CountableRange(1486..<1495), nameRange: CountableRange(1486..<1490))], "returnType": "Observable<[TVShow]>", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     override func fetchShows(for category: Criteria, page: Int)  -> Observable<[TVShow]> {
        
            return cuckoo_manager.call("fetchShows(for: Criteria, page: Int) -> Observable<[TVShow]>",
                parameters: (category, page),
                original: observed.map { o in
                    return { (args) -> Observable<[TVShow]> in
                        let (category, page) = args
                        return o.fetchShows(for: category, page: page)
                    }
                })
        
    }
    

    struct __StubbingProxy_MovieInteractor: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var remoteStore: Cuckoo.ToBeStubbedProperty<RemoteStoreContract?> {
            return .init(manager: cuckoo_manager, name: "remoteStore")
        }
        
        var language: Cuckoo.ToBeStubbedProperty<String> {
            return .init(manager: cuckoo_manager, name: "language")
        }
        
        
        func fetchHomeCategories<M1: Cuckoo.Matchable>(for section: M1) -> Cuckoo.StubFunction<(Section), Observable<[Criteria]>> where M1.MatchedType == Section {
            let matchers: [Cuckoo.ParameterMatcher<(Section)>] = [wrap(matchable: section) { $0 }]
            return .init(stub: cuckoo_manager.createStub("fetchHomeCategories(for: Section) -> Observable<[Criteria]>", parameterMatchers: matchers))
        }
        
        func fetchMovies<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for category: M1, page: M2) -> Cuckoo.StubFunction<(Criteria, Int), Observable<[Movie]>> where M1.MatchedType == Criteria, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Criteria, Int)>] = [wrap(matchable: category) { $0.0 }, wrap(matchable: page) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("fetchMovies(for: Criteria, page: Int) -> Observable<[Movie]>", parameterMatchers: matchers))
        }
        
        func fetchShows<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for category: M1, page: M2) -> Cuckoo.StubFunction<(Criteria, Int), Observable<[TVShow]>> where M1.MatchedType == Criteria, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Criteria, Int)>] = [wrap(matchable: category) { $0.0 }, wrap(matchable: page) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("fetchShows(for: Criteria, page: Int) -> Observable<[TVShow]>", parameterMatchers: matchers))
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

        
        var remoteStore: Cuckoo.VerifyProperty<RemoteStoreContract?> {
            return .init(manager: cuckoo_manager, name: "remoteStore", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var language: Cuckoo.VerifyProperty<String> {
            return .init(manager: cuckoo_manager, name: "language", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func fetchHomeCategories<M1: Cuckoo.Matchable>(for section: M1) -> Cuckoo.__DoNotUse<Observable<[Criteria]>> where M1.MatchedType == Section {
            let matchers: [Cuckoo.ParameterMatcher<(Section)>] = [wrap(matchable: section) { $0 }]
            return cuckoo_manager.verify("fetchHomeCategories(for: Section) -> Observable<[Criteria]>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func fetchMovies<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for category: M1, page: M2) -> Cuckoo.__DoNotUse<Observable<[Movie]>> where M1.MatchedType == Criteria, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Criteria, Int)>] = [wrap(matchable: category) { $0.0 }, wrap(matchable: page) { $0.1 }]
            return cuckoo_manager.verify("fetchMovies(for: Criteria, page: Int) -> Observable<[Movie]>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func fetchShows<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for category: M1, page: M2) -> Cuckoo.__DoNotUse<Observable<[TVShow]>> where M1.MatchedType == Criteria, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Criteria, Int)>] = [wrap(matchable: category) { $0.0 }, wrap(matchable: page) { $0.1 }]
            return cuckoo_manager.verify("fetchShows(for: Criteria, page: Int) -> Observable<[TVShow]>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class MovieInteractorStub: MovieInteractor {
    
     override var remoteStore: RemoteStoreContract! {
        get {
            return DefaultValueRegistry.defaultValue(for: (RemoteStoreContract!).self)
        }
        
        set { }
        
    }
    
     override var language: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    

    

    
     override func fetchHomeCategories(for section: Section)  -> Observable<[Criteria]> {
        return DefaultValueRegistry.defaultValue(for: Observable<[Criteria]>.self)
    }
    
     override func fetchMovies(for category: Criteria, page: Int)  -> Observable<[Movie]> {
        return DefaultValueRegistry.defaultValue(for: Observable<[Movie]>.self)
    }
    
     override func fetchShows(for category: Criteria, page: Int)  -> Observable<[TVShow]> {
        return DefaultValueRegistry.defaultValue(for: Observable<[TVShow]>.self)
    }
    
}



