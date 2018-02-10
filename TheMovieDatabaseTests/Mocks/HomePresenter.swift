// MARK: - Mocks generated from file: TheMovieDatabase/UI/Home/HomeViewController.swift at 2018-02-08 04:41:42 +0000

//
//  HomeViewController.swift
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

class MockHomeViewController: HomeViewController, Cuckoo.Mock {
    typealias MocksType = HomeViewController
    typealias Stubbing = __StubbingProxy_HomeViewController
    typealias Verification = __VerificationProxy_HomeViewController
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: HomeViewController?

    func spy(on victim: HomeViewController) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "presenter", "accesibility": "", "@type": "InstanceVariable", "type": "HomePresenterContract?", "isReadOnly": false]
     override var presenter: HomePresenterContract? {
        get {
            return cuckoo_manager.getter("presenter", original: observed.map { o in return { () -> HomePresenterContract? in o.presenter }})
        }
        
        set {
            cuckoo_manager.setter("presenter", value: newValue, original: observed != nil ? { self.observed?.presenter = $0 } : nil)
        }
        
    }
    
    // ["name": "router", "accesibility": "", "@type": "InstanceVariable", "type": "HomeRouter?", "isReadOnly": false]
     override var router: HomeRouter? {
        get {
            return cuckoo_manager.getter("router", original: observed.map { o in return { () -> HomeRouter? in o.router }})
        }
        
        set {
            cuckoo_manager.setter("router", value: newValue, original: observed != nil ? { self.observed?.router = $0 } : nil)
        }
        
    }
    
    // ["name": "categories", "accesibility": "", "@type": "InstanceVariable", "type": "[MainCategory]", "isReadOnly": false]
     override var categories: [MainCategory] {
        get {
            return cuckoo_manager.getter("categories", original: observed.map { o in return { () -> [MainCategory] in o.categories }})
        }
        
        set {
            cuckoo_manager.setter("categories", value: newValue, original: observed != nil ? { self.observed?.categories = $0 } : nil)
        }
        
    }
    
    // ["name": "tableView", "accesibility": "", "@type": "InstanceVariable", "type": "UITableView!", "isReadOnly": false]
     override var tableView: UITableView! {
        get {
            return cuckoo_manager.getter("tableView", original: observed.map { o in return { () -> UITableView! in o.tableView }})
        }
        
        set {
            cuckoo_manager.setter("tableView", value: newValue, original: observed != nil ? { self.observed?.tableView = $0 } : nil)
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
    
    // ["name": "prepare", "returnSignature": "", "fullyQualifiedName": "prepare(for: UIStoryboardSegue, sender: Any?)", "parameterSignature": "for segue: UIStoryboardSegue, sender: Any?", "parameterSignatureWithoutNames": "segue: UIStoryboardSegue, sender: Any?", "inputTypes": "UIStoryboardSegue, Any?", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "segue, sender", "call": "for: segue, sender: sender", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("for"), name: "segue", type: "UIStoryboardSegue", range: CountableRange(672..<700), nameRange: CountableRange(672..<675)), CuckooGeneratorFramework.MethodParameter(label: Optional("sender"), name: "sender", type: "Any?", range: CountableRange(702..<714), nameRange: CountableRange(702..<708))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        
            return cuckoo_manager.call("prepare(for: UIStoryboardSegue, sender: Any?)",
                parameters: (segue, sender),
                original: observed.map { o in
                    return { (args) in
                        let (segue, sender) = args
                         o.prepare(for: segue, sender: sender)
                    }
                })
        
    }
    
    // ["name": "display", "returnSignature": "", "fullyQualifiedName": "display(categories: [MainCategory])", "parameterSignature": "categories: [MainCategory]", "parameterSignatureWithoutNames": "categories: [MainCategory]", "inputTypes": "[MainCategory]", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "categories", "call": "categories: categories", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("categories"), name: "categories", type: "[MainCategory]", range: CountableRange(783..<809), nameRange: CountableRange(783..<793))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func display(categories: [MainCategory])  {
        
            return cuckoo_manager.call("display(categories: [MainCategory])",
                parameters: (categories),
                original: observed.map { o in
                    return { (args) in
                        let (categories) = args
                         o.display(categories: categories)
                    }
                })
        
    }
    
    // ["name": "display", "returnSignature": "", "fullyQualifiedName": "display(section: MainSection)", "parameterSignature": "section: MainSection", "parameterSignatureWithoutNames": "section: MainSection", "inputTypes": "MainSection", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "section", "call": "section: section", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("section"), name: "section", type: "MainSection", range: CountableRange(916..<936), nameRange: CountableRange(916..<923))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func display(section: MainSection)  {
        
            return cuckoo_manager.call("display(section: MainSection)",
                parameters: (section),
                original: observed.map { o in
                    return { (args) in
                        let (section) = args
                         o.display(section: section)
                    }
                })
        
    }
    

    struct __StubbingProxy_HomeViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var presenter: Cuckoo.ToBeStubbedProperty<HomePresenterContract?> {
            return .init(manager: cuckoo_manager, name: "presenter")
        }
        
        var router: Cuckoo.ToBeStubbedProperty<HomeRouter?> {
            return .init(manager: cuckoo_manager, name: "router")
        }
        
        var categories: Cuckoo.ToBeStubbedProperty<[MainCategory]> {
            return .init(manager: cuckoo_manager, name: "categories")
        }
        
        var tableView: Cuckoo.ToBeStubbedProperty<UITableView?> {
            return .init(manager: cuckoo_manager, name: "tableView")
        }
        
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
        }
        
        func prepare<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for segue: M1, sender: M2) -> Cuckoo.StubNoReturnFunction<(UIStoryboardSegue, Any?)> where M1.MatchedType == UIStoryboardSegue, M2.MatchedType == Any? {
            let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue, Any?)>] = [wrap(matchable: segue) { $0.0 }, wrap(matchable: sender) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("prepare(for: UIStoryboardSegue, sender: Any?)", parameterMatchers: matchers))
        }
        
        func display<M1: Cuckoo.Matchable>(categories: M1) -> Cuckoo.StubNoReturnFunction<([MainCategory])> where M1.MatchedType == [MainCategory] {
            let matchers: [Cuckoo.ParameterMatcher<([MainCategory])>] = [wrap(matchable: categories) { $0 }]
            return .init(stub: cuckoo_manager.createStub("display(categories: [MainCategory])", parameterMatchers: matchers))
        }
        
        func display<M1: Cuckoo.Matchable>(section: M1) -> Cuckoo.StubNoReturnFunction<(MainSection)> where M1.MatchedType == MainSection {
            let matchers: [Cuckoo.ParameterMatcher<(MainSection)>] = [wrap(matchable: section) { $0 }]
            return .init(stub: cuckoo_manager.createStub("display(section: MainSection)", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_HomeViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var presenter: Cuckoo.VerifyProperty<HomePresenterContract?> {
            return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var router: Cuckoo.VerifyProperty<HomeRouter?> {
            return .init(manager: cuckoo_manager, name: "router", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var categories: Cuckoo.VerifyProperty<[MainCategory]> {
            return .init(manager: cuckoo_manager, name: "categories", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var tableView: Cuckoo.VerifyProperty<UITableView?> {
            return .init(manager: cuckoo_manager, name: "tableView", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func prepare<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for segue: M1, sender: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UIStoryboardSegue, M2.MatchedType == Any? {
            let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue, Any?)>] = [wrap(matchable: segue) { $0.0 }, wrap(matchable: sender) { $0.1 }]
            return cuckoo_manager.verify("prepare(for: UIStoryboardSegue, sender: Any?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func display<M1: Cuckoo.Matchable>(categories: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [MainCategory] {
            let matchers: [Cuckoo.ParameterMatcher<([MainCategory])>] = [wrap(matchable: categories) { $0 }]
            return cuckoo_manager.verify("display(categories: [MainCategory])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func display<M1: Cuckoo.Matchable>(section: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == MainSection {
            let matchers: [Cuckoo.ParameterMatcher<(MainSection)>] = [wrap(matchable: section) { $0 }]
            return cuckoo_manager.verify("display(section: MainSection)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class HomeViewControllerStub: HomeViewController {
    
     override var presenter: HomePresenterContract? {
        get {
            return DefaultValueRegistry.defaultValue(for: (HomePresenterContract?).self)
        }
        
        set { }
        
    }
    
     override var router: HomeRouter? {
        get {
            return DefaultValueRegistry.defaultValue(for: (HomeRouter?).self)
        }
        
        set { }
        
    }
    
     override var categories: [MainCategory] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([MainCategory]).self)
        }
        
        set { }
        
    }
    
     override var tableView: UITableView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UITableView!).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func display(categories: [MainCategory])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func display(section: MainSection)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



