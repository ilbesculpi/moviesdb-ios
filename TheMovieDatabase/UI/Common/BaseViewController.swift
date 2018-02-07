//
//  BaseViewController.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

/**
 * This controller represents a base controller for sharing functionallity across app controllers.
 */
class BaseViewController: UIViewController {
    
    var disposeBag: DisposeBag = DisposeBag();

    override func viewDidLoad() {
        super.viewDidLoad();
    }

}
