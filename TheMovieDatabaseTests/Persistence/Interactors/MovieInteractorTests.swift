//
//  MovieInteractorTests.swift
//  TheMovieDatabaseTests
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import XCTest
@testable import TheMovieDatabase
import RxCocoa
import RxSwift

class MovieInteractorTests: XCTestCase {
    
    var interactor: MovieInteractor!
    
    private var disposeBag: DisposeBag = DisposeBag();
    
    override func setUp() {
        super.setUp();
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false;
        interactor = MovieInteractor();
    }
    
    override func tearDown() {
        super.tearDown();
    }
    
    func testFetchCategories() {
        
        let fetchExpectation = expectation(description: "fetch categories list expectation");
        
        let expectedCategories: [MainCategory] = [.popular, .topRated, .upcoming];
        
        interactor.fetchHomeCategories()
            .subscribe(onNext: { (categories) in
                XCTAssertNotNil(categories, "category list should not be nil");
                XCTAssertEqual(expectedCategories, categories, "category list is not equal to expected");
                fetchExpectation.fulfill();
            })
            .disposed(by: disposeBag);
        
        waitForExpectations(timeout: 1) { (error) in
            if let error = error {
                XCTFail("waitForExpectationsWithTimeout errored: \(error)");
            }
        }
        
    }
    
}
