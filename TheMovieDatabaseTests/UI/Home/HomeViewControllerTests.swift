//
//  HomeViewControllerTests.swift
//  TheMovieDatabaseTests
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import XCTest
import UIKit
import Cuckoo
@testable import TheMovieDatabase

class HomeViewControllerTests: XCTestCase {
    
    var viewController: HomeViewController!
    var presenterMock: MockHomePresenter!
        
    override func setUp() {
        super.setUp();
        viewController = loadViewController();
        presenterMock = MockHomePresenter();
        viewController.presenter = presenterMock;
    }
    
    private func loadViewController() -> HomeViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let viewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController;
        return viewController;
    }
    
    override func tearDown() {
        super.tearDown();
    }
    
    func testShouldCallViewReady() {
        
        // mock presenter interactions
        stub(presenterMock) { (mock) in
            when(mock).viewDidLoad().thenDoNothing();
        }
        
        // trigger view load
        _ = viewController.view;
        viewController.viewDidAppear(false);
        
        // view controller should call presenter `viewReady()`
        verify(presenterMock).viewDidLoad();
    }
    
    func testShouldDisplayCategoryTitle() {
        
        // mock presenter interactions
        stub(presenterMock) { (mock) in
            when(mock).viewDidLoad().thenDoNothing();
        }
        
        // trigger view load
        _ = viewController.view;
        viewController.viewDidAppear(false);
        
        viewController.display(section: .movies);
        XCTAssertEqual(viewController.title, "Movies");
        
        viewController.display(section: .tvShows);
        XCTAssertEqual(viewController.title, "Series");
    }
    
    func testShouldDisplayEmptyCategories() {
        
        // mock presenter interactions
        stub(presenterMock) { (mock) in
            when(mock).viewDidLoad().thenDoNothing();
        }
        
        // trigger view load
        _ = viewController.view;
        viewController.viewDidAppear(false);
        
        viewController.display(categories: []);
        
        let tableView = viewController.tableView!;
        XCTAssertEqual(0, viewController.categories.count);
        XCTAssertEqual(0, viewController.tableView(tableView, numberOfRowsInSection: 0));
        XCTAssertEqual([], viewController.categories, "`viewController` categories should be an empty array");
    }
    
    func testShouldDisplayCategories() {
        
        // mock presenter interactions
        stub(presenterMock) { (mock) in
            when(mock).viewDidLoad().thenDoNothing();
        }
        
        // trigger view load
        _ = viewController.view;
        viewController.viewDidAppear(false);
        
        let categories: [MainCategory] = [.popular, .topRated, .upcoming];
        viewController.display(categories: categories);
        
        let tableView = viewController.tableView!
        XCTAssertEqual(3, viewController.categories.count);
        XCTAssertEqual(3, viewController.tableView(tableView, numberOfRowsInSection: 0));
        XCTAssertEqual([.popular, .topRated, .upcoming], viewController.categories, "`viewController` categories should match the list provided");
        
        // assert cells
        var indexPath = IndexPath(row: 0, section: 0);
        var cell = tableView.cellForRow(at: indexPath) as? MainCategoryCell;
        XCTAssertNotNil(cell);
        XCTAssertEqual("Popular", cell?.labelTitle.text);
        
        indexPath = IndexPath(row: 1, section: 0);
        cell = tableView.cellForRow(at: indexPath) as? MainCategoryCell;
        XCTAssertNotNil(cell);
        XCTAssertEqual("Top Rated", cell?.labelTitle.text);
        
        indexPath = IndexPath(row: 2, section: 0);
        cell = tableView.cellForRow(at: indexPath) as? MainCategoryCell;
        XCTAssertNotNil(cell);
        XCTAssertEqual("Upcoming", cell?.labelTitle.text);
        
    }
    
}





