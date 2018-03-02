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

class HomePresenter: BasePresenter, HomePresenterContract {
    
    weak var view: HomeViewContract!
    var section: Section!
    var interactor: MovieInteractorContract!
    private var disposeBag: DisposeBag = DisposeBag();

    override func viewDidLoad() {
        super.viewDidLoad();
        view.display(section: section);
    }
    
    override func onResume() {
        super.onResume();
        fetchAndDisplayCategories();
    }
    
    private func fetchAndDisplayCategories() {
        interactor.fetchHomeCategories(for: section)
            .subscribe(onNext: { [weak self] (categories) in
                self?.view.display(categories: categories);
            })
            .disposed(by: disposeBag);
    }
    
}
