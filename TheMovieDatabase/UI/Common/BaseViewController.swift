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
class BaseViewController: UIViewController, BaseViewContract {
    
    var disposeBag: DisposeBag = DisposeBag();
    private var loaderView: LoaderViewController?

    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    func displayUserMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert);
        present(alert, animated: true, completion: nil);
    }
    
    func showLoadingView() {
        showLoadingView(completion: nil);
    }
    
    func showLoadingView(completion: (() -> ())?) {
        if( loaderView == nil ) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let controller = storyboard.instantiateViewController(withIdentifier: "LoaderViewController") as! LoaderViewController;
            controller.presenter = self;
            loaderView = controller;
        }
        loaderView?.show(completion: completion);
    }
    
    func hideLoadingView() {
        hideLoadingView(completion: nil);
    }
    
    func hideLoadingView(completion: (() -> ())?) {
        loaderView?.dismiss(completion: completion);
    }

}
