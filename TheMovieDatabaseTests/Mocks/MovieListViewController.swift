// MARK: - Mocks generated from file: TheMovieDatabase/UI/Home/HomeViewController.swift at 2018-02-13 02:12:13 +0000

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
    
    // ["name": "categories", "accesibility": "", "@type": "InstanceVariable", "type": "[Criteria]", "isReadOnly": false]
     override var categories: [Criteria] {
        get {
            return cuckoo_manager.getter("categories", original: observed.map { o in return { () -> [Criteria] in o.categories }})
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
    
    // ["name": "section", "accesibility": "", "@type": "InstanceVariable", "type": "Section", "isReadOnly": true]
     override var section: Section {
        get {
            return cuckoo_manager.getter("section", original: observed.map { o in return { () -> Section in o.section }})
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
    
    // ["name": "viewDidAppear", "returnSignature": "", "fullyQualifiedName": "viewDidAppear(_: Bool)", "parameterSignature": "_ animated: Bool", "parameterSignatureWithoutNames": "animated: Bool", "inputTypes": "Bool", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "animated", "call": "animated", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "animated", type: "Bool", range: CountableRange(833..<849), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func viewDidAppear(_ animated: Bool)  {
        
            return cuckoo_manager.call("viewDidAppear(_: Bool)",
                parameters: (animated),
                original: observed.map { o in
                    return { (args) in
                        let (animated) = args
                         o.viewDidAppear(animated)
                    }
                })
        
    }
    
    // ["name": "prepare", "returnSignature": "", "fullyQualifiedName": "prepare(for: UIStoryboardSegue, sender: Any?)", "parameterSignature": "for segue: UIStoryboardSegue, sender: Any?", "parameterSignatureWithoutNames": "segue: UIStoryboardSegue, sender: Any?", "inputTypes": "UIStoryboardSegue, Any?", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "segue, sender", "call": "for: segue, sender: sender", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("for"), name: "segue", type: "UIStoryboardSegue", range: CountableRange(960..<988), nameRange: CountableRange(960..<963)), CuckooGeneratorFramework.MethodParameter(label: Optional("sender"), name: "sender", type: "Any?", range: CountableRange(990..<1002), nameRange: CountableRange(990..<996))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
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
    
    // ["name": "display", "returnSignature": "", "fullyQualifiedName": "display(categories: [Criteria])", "parameterSignature": "categories: [Criteria]", "parameterSignatureWithoutNames": "categories: [Criteria]", "inputTypes": "[Criteria]", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "categories", "call": "categories: categories", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("categories"), name: "categories", type: "[Criteria]", range: CountableRange(1071..<1093), nameRange: CountableRange(1071..<1081))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func display(categories: [Criteria])  {
        
            return cuckoo_manager.call("display(categories: [Criteria])",
                parameters: (categories),
                original: observed.map { o in
                    return { (args) in
                        let (categories) = args
                         o.display(categories: categories)
                    }
                })
        
    }
    
    // ["name": "display", "returnSignature": "", "fullyQualifiedName": "display(section: Section)", "parameterSignature": "section: Section", "parameterSignatureWithoutNames": "section: Section", "inputTypes": "Section", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "section", "call": "section: section", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("section"), name: "section", type: "Section", range: CountableRange(1200..<1216), nameRange: CountableRange(1200..<1207))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func display(section: Section)  {
        
            return cuckoo_manager.call("display(section: Section)",
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
        
        var categories: Cuckoo.ToBeStubbedProperty<[Criteria]> {
            return .init(manager: cuckoo_manager, name: "categories")
        }
        
        var tableView: Cuckoo.ToBeStubbedProperty<UITableView?> {
            return .init(manager: cuckoo_manager, name: "tableView")
        }
        
        var section: Cuckoo.ToBeStubbedReadOnlyProperty<Section> {
            return .init(manager: cuckoo_manager, name: "section")
        }
        
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
        }
        
        func viewDidAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.StubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
            let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
            return .init(stub: cuckoo_manager.createStub("viewDidAppear(_: Bool)", parameterMatchers: matchers))
        }
        
        func prepare<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for segue: M1, sender: M2) -> Cuckoo.StubNoReturnFunction<(UIStoryboardSegue, Any?)> where M1.MatchedType == UIStoryboardSegue, M2.MatchedType == Any? {
            let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue, Any?)>] = [wrap(matchable: segue) { $0.0 }, wrap(matchable: sender) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("prepare(for: UIStoryboardSegue, sender: Any?)", parameterMatchers: matchers))
        }
        
        func display<M1: Cuckoo.Matchable>(categories: M1) -> Cuckoo.StubNoReturnFunction<([Criteria])> where M1.MatchedType == [Criteria] {
            let matchers: [Cuckoo.ParameterMatcher<([Criteria])>] = [wrap(matchable: categories) { $0 }]
            return .init(stub: cuckoo_manager.createStub("display(categories: [Criteria])", parameterMatchers: matchers))
        }
        
        func display<M1: Cuckoo.Matchable>(section: M1) -> Cuckoo.StubNoReturnFunction<(Section)> where M1.MatchedType == Section {
            let matchers: [Cuckoo.ParameterMatcher<(Section)>] = [wrap(matchable: section) { $0 }]
            return .init(stub: cuckoo_manager.createStub("display(section: Section)", parameterMatchers: matchers))
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
        
        var categories: Cuckoo.VerifyProperty<[Criteria]> {
            return .init(manager: cuckoo_manager, name: "categories", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var tableView: Cuckoo.VerifyProperty<UITableView?> {
            return .init(manager: cuckoo_manager, name: "tableView", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var section: Cuckoo.VerifyReadOnlyProperty<Section> {
            return .init(manager: cuckoo_manager, name: "section", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func viewDidAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Bool {
            let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
            return cuckoo_manager.verify("viewDidAppear(_: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func prepare<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for segue: M1, sender: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UIStoryboardSegue, M2.MatchedType == Any? {
            let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue, Any?)>] = [wrap(matchable: segue) { $0.0 }, wrap(matchable: sender) { $0.1 }]
            return cuckoo_manager.verify("prepare(for: UIStoryboardSegue, sender: Any?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func display<M1: Cuckoo.Matchable>(categories: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [Criteria] {
            let matchers: [Cuckoo.ParameterMatcher<([Criteria])>] = [wrap(matchable: categories) { $0 }]
            return cuckoo_manager.verify("display(categories: [Criteria])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func display<M1: Cuckoo.Matchable>(section: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Section {
            let matchers: [Cuckoo.ParameterMatcher<(Section)>] = [wrap(matchable: section) { $0 }]
            return cuckoo_manager.verify("display(section: Section)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
    
     override var categories: [Criteria] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Criteria]).self)
        }
        
        set { }
        
    }
    
     override var tableView: UITableView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UITableView!).self)
        }
        
        set { }
        
    }
    
     override var section: Section {
        get {
            return DefaultValueRegistry.defaultValue(for: (Section).self)
        }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func viewDidAppear(_ animated: Bool)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func display(categories: [Criteria])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func display(section: Section)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



