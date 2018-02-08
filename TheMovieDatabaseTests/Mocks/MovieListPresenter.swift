// MARK: - Mocks generated from file: TheMovieDatabase/UI/Home/HomePresenter.swift at 2018-02-08 03:49:36 +0000

//
//  HomePresenter.swift
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

class MockHomePresenter: HomePresenter, Cuckoo.Mock {
    typealias MocksType = HomePresenter
    typealias Stubbing = __StubbingProxy_HomePresenter
    typealias Verification = __VerificationProxy_HomePresenter
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: HomePresenter?

    func spy(on victim: HomePresenter) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "view", "accesibility": "", "@type": "InstanceVariable", "type": "HomeViewContract!", "isReadOnly": false]
     override var view: HomeViewContract! {
        get {
            return cuckoo_manager.getter("view", original: observed.map { o in return { () -> HomeViewContract! in o.view }})
        }
        
        set {
            cuckoo_manager.setter("view", value: newValue, original: observed != nil ? { self.observed?.view = $0 } : nil)
        }
        
    }
    
    // ["name": "interactor", "accesibility": "", "@type": "InstanceVariable", "type": "MovieInteractorContract!", "isReadOnly": false]
     override var interactor: MovieInteractorContract! {
        get {
            return cuckoo_manager.getter("interactor", original: observed.map { o in return { () -> MovieInteractorContract! in o.interactor }})
        }
        
        set {
            cuckoo_manager.setter("interactor", value: newValue, original: observed != nil ? { self.observed?.interactor = $0 } : nil)
        }
        
    }
    
    // ["name": "section", "accesibility": "", "@type": "InstanceVariable", "type": "MainSection!", "isReadOnly": false]
     override var section: MainSection! {
        get {
            return cuckoo_manager.getter("section", original: observed.map { o in return { () -> MainSection! in o.section }})
        }
        
        set {
            cuckoo_manager.setter("section", value: newValue, original: observed != nil ? { self.observed?.section = $0 } : nil)
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
    

    struct __StubbingProxy_HomePresenter: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var view: Cuckoo.ToBeStubbedProperty<HomeViewContract?> {
            return .init(manager: cuckoo_manager, name: "view")
        }
        
        var interactor: Cuckoo.ToBeStubbedProperty<MovieInteractorContract?> {
            return .init(manager: cuckoo_manager, name: "interactor")
        }
        
        var section: Cuckoo.ToBeStubbedProperty<MainSection?> {
            return .init(manager: cuckoo_manager, name: "section")
        }
        
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_HomePresenter: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var view: Cuckoo.VerifyProperty<HomeViewContract?> {
            return .init(manager: cuckoo_manager, name: "view", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var interactor: Cuckoo.VerifyProperty<MovieInteractorContract?> {
            return .init(manager: cuckoo_manager, name: "interactor", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var section: Cuckoo.VerifyProperty<MainSection?> {
            return .init(manager: cuckoo_manager, name: "section", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class HomePresenterStub: HomePresenter {
    
     override var view: HomeViewContract! {
        get {
            return DefaultValueRegistry.defaultValue(for: (HomeViewContract!).self)
        }
        
        set { }
        
    }
    
     override var interactor: MovieInteractorContract! {
        get {
            return DefaultValueRegistry.defaultValue(for: (MovieInteractorContract!).self)
        }
        
        set { }
        
    }
    
     override var section: MainSection! {
        get {
            return DefaultValueRegistry.defaultValue(for: (MainSection!).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



