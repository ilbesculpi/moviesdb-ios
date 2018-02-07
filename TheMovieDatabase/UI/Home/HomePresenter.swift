//
//  HomePresenter.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class HomePresenter: HomePresenterContract {
    
    weak var view: HomeViewContract!
    var interactor: MovieInteractorContract!
    private var disposeBag: DisposeBag = DisposeBag();

    func viewDidLoad() {
        fetchAndDisplayCategories();
    }
    
    private func fetchAndDisplayCategories() {
        interactor.fetchHomeCategories()
            .subscribe(onNext: { [weak self] (categories) in
                self?.view.displayCategories(categories);
            })
            .disposed(by: disposeBag);
    }
    
}
