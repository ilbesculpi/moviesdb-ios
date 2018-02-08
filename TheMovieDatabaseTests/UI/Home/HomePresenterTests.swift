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
            let categoriesResult: Observable<[MainCategory]> = Observable.just([]);
            when(mock).fetchHomeCategories()
                .thenReturn(categoriesResult);
        }
        
        presenter.section = .movies;
        presenter.viewDidLoad();
        var captor = ArgumentCaptor<MainSection>();
        verify(viewMock).display(section: captor.capture());
        XCTAssertEqual(.movies, captor.value);
        
        reset(viewMock, interactorMock);
        presenter.section = .series;
        presenter.viewDidLoad();
        captor = ArgumentCaptor<MainSection>();
        verify(viewMock).display(section: captor.capture());
        XCTAssertEqual(.series, captor.value);
        
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
            let categoriesResult = Observable.just([MainCategory.popular, MainCategory.topRated, MainCategory.upcoming]);
            when(mock).fetchHomeCategories()
                .thenReturn(categoriesResult);
        }
        
        presenter.viewDidLoad();
        
        let expectedCategories = [MainCategory.popular, MainCategory.topRated, MainCategory.upcoming];
        let captor = ArgumentCaptor<[MainCategory]>();
        verify(interactorMock).fetchHomeCategories();
        verify(viewMock).display(categories: captor.capture());
        XCTAssertNotNil(captor.value);
        XCTAssertEqual(expectedCategories, captor.value!);
        
    }
    
    
}

