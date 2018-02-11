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

class MovieListPresenter: BasePresenter, MovieListPresenterContract {

    weak var view: MovieListViewContract!
    var interactor: MovieInteractorContract!
    var page: Int = 1;
    var category: MainCategory!
    var disposeBag: DisposeBag = DisposeBag();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        view.display(category: category);
    }
    
    override func onResume() {
        super.onResume();
        fetchMovies();
    }
    
    func fetchMovies() {
        
        view.showLoadingView();
        
        interactor.fetchMovies(for: category, page: page)
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] (movies) in
                self?.view.hideLoadingView();
                self?.view.display(movies: movies);
            }, onError: { [weak self] (error) in
                self?.view.hideLoadingView();
                self?.view.displayUserMessage(title: "Error", message: error.localizedDescription);
            })
            .disposed(by: disposeBag);
        
    }
    
}
