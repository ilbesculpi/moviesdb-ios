// MARK: - Mocks generated from file: TheMovieDatabase/UI/MovieList/MovieListViewController.swift at 2018-02-07 21:27:51 +0000

//
//  MovieListViewController.swift
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

class MockMovieListViewController: MovieListViewController, Cuckoo.Mock {
    typealias MocksType = MovieListViewController
    typealias Stubbing = __StubbingProxy_MovieListViewController
    typealias Verification = __VerificationProxy_MovieListViewController
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: MovieListViewController?

    func spy(on victim: MovieListViewController) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "disposeBag", "accesibility": "", "@type": "InstanceVariable", "type": "DisposeBag", "isReadOnly": false]
     override var disposeBag: DisposeBag {
        get {
            return cuckoo_manager.getter("disposeBag", original: observed.map { o in return { () -> DisposeBag in o.disposeBag }})
        }
        
        set {
            cuckoo_manager.setter("disposeBag", value: newValue, original: observed != nil ? { self.observed?.disposeBag = $0 } : nil)
        }
        
    }
    

    

    
    // ["name": "viewDidLoad", "returnSignature": "", "fullyQualifiedName": "viewDidLoad()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                original: observed.map { o in
                    return { (args) in
                        let () = args
                         o.viewDidLoad()
                    }
                })
        
    }
    

    struct __StubbingProxy_MovieListViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var disposeBag: Cuckoo.ToBeStubbedProperty<DisposeBag> {
            return .init(manager: cuckoo_manager, name: "disposeBag")
        }
        
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_MovieListViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var disposeBag: Cuckoo.VerifyProperty<DisposeBag> {
            return .init(manager: cuckoo_manager, name: "disposeBag", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class MovieListViewControllerStub: MovieListViewController {
    
     override var disposeBag: DisposeBag {
        get {
            return DefaultValueRegistry.defaultValue(for: (DisposeBag).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



