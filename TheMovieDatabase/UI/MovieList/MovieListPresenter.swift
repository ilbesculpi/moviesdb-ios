//
//  MovieListPresenter.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class MovieListPresenter: MovieListPresenterContract {

    weak var view: MovieListViewContract!
    var interactor: MovieInteractorContract!
    var page: Int = 1;
    var category: MainCategory!
    var disposeBag: DisposeBag = DisposeBag();
    
    func viewDidLoad() {
        view.display(category: category);
        fetchMovies();
    }
    
    func fetchMovies() {
        
        view.startLoading();
        
        interactor.fetchMovies(for: category, page: page)
            .subscribe(onNext: { [weak self] (movies) in
                self?.view.stopLoading();
                self?.view.display(movies: movies);
            }, onError: { [weak self] (error) in
                self?.view.stopLoading();
                self?.view.displayUserMessage(title: "Error", message: error.localizedDescription);
            })
            .disposed(by: disposeBag);
    }
    
}
