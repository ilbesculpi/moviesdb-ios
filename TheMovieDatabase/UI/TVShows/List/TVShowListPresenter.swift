//
//  TVShowListPresenter.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/9/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class TVShowListPresenter: BasePresenter, TVShowListPresenterContract {

    weak var view: TVShowListViewContract!
    var interactor: MovieInteractorContract!
    var page: Int = 1;
    var category: MainCategory!
    var disposeBag: DisposeBag = DisposeBag();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        view.display(category: category);
        fetchShows();
    }
    
    func fetchShows() {
        
        view.startLoading();
        
        interactor.fetchShows(for: category, page: page)
            .subscribe(onNext: { [weak self] (shows) in
                self?.view.stopLoading();
                self?.view.display(shows: shows);
            }, onError: { [weak self] (error) in
                self?.view.stopLoading();
                self?.view.displayUserMessage(title: "Error", message: error.localizedDescription);
            })
            .disposed(by: disposeBag);
    }
    
}
