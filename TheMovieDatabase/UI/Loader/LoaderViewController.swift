//
//  LoaderViewController.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/9/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class LoaderViewController: UIViewController {
    
    weak var presenter: UIViewController?

    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    func show(completion: (() -> ())?) {
        presenter?.present(self, animated: true, completion: completion);
    }
    
    func dismiss(completion: (() -> ())?) {
        self.presentingViewController?.dismiss(animated: true, completion: completion);
    }
    
    deinit {
        presenter = nil;
    }

}
