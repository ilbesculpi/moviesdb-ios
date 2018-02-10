//
//  BaseContracts.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import Foundation

protocol BaseViewContract: AnyObject {
    
    func showLoadingView();
    func showLoadingView(completion: (()->())?);
    func hideLoadingView();
    func hideLoadingView(completion: (()->())?);
    func displayUserMessage(title: String, message: String);
    
}

protocol BasePresenterContract: AnyObject {
    
    func viewDidLoad();
    
}
