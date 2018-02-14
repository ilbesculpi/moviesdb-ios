//
//  HomePresenterTests.swift
//  TheMovieDatabaseTests
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import XCTest
import UIKit
import Cuckoo
import RxCocoa
import RxSwift
@testable import TheMovieDatabase

class HomePresenterTests: XCTestCase {
    
    var presenter: HomePresenter!
    var viewMock: MockHomeViewController!
    var interactorMock: MockMovieInteractor!
        
    override func setUp() {
        super.setUp();
        viewMock = MockHomeViewController();
        interactorMock = MockMovieInteractor();
        presenter = HomePresenter();
        presenter.section = .movies;
        presenter.view = viewMock;
        presenter.interactor = interactorMock;
    }
    
    override func tearDown() {
        super.tearDown();
    }
    
    func testShouldDisplaySectionWhenViewLoad() {
        
        // mock view interactions
        stub(viewMock) { (mock) in
            when(mock).viewDidLoad().thenDoNothing();
            when(mock).display(section: any()).thenDoNothing();
            when(mock).display(categories: any()).thenDoNothing();
        }
        
        // mock interactor interactions
        stub(interactorMock) { (mock) in
            let categoriesResult: Observable<[Criteria]> = Observable.just([]);
            when(mock).fetchHomeCategories(for: any())
                .thenReturn(categoriesResult);
        }
        
        presenter.section = .movies;
        presenter.viewDidLoad();
        var captor = ArgumentCaptor<Section>();
        verify(viewMock).display(section: captor.capture());
        XCTAssertEqual(.movies, captor.value);
        
        reset(viewMock, interactorMock);
        presenter.section = .tvShows;
        presenter.viewDidLoad();
        captor = ArgumentCaptor<Section>();
        verify(viewMock).display(section: captor.capture());
        XCTAssertEqual(.tvShows, captor.value);
        
    }
    
    func testShouldFetchCategoriesWhenViewLoad() {
        
        // mock view interactions
        stub(viewMock) { (mock) in
            when(mock).viewDidLoad().thenDoNothing();
            when(mock).display(section: any()).thenDoNothing();
            when(mock).display(categories: any()).thenDoNothing();
        }
        
        // mock interactor interactions
        stub(interactorMock) { (mock) in
            let categoriesResult = Observable.just([Criteria.popular, Criteria.topRated, Criteria.upcoming]);
            when(mock).fetchHomeCategories(for: any())
                .thenReturn(categoriesResult);
        }
        
        presenter.viewDidLoad();
        
        let expectedCategories = [Criteria.popular, Criteria.topRated, Criteria.upcoming];
        let captor = ArgumentCaptor<[Criteria]>();
        verify(interactorMock).fetchHomeCategories(for: any());
        verify(viewMock).display(categories: captor.capture());
        XCTAssertNotNil(captor.value);
        XCTAssertEqual(expectedCategories, captor.value!);
        
    }
 
    
}

