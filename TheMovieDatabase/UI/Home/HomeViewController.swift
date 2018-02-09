//
//  HomeViewController.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class HomeViewController: BaseViewController, HomeViewContract {
    
    // Home Presenter
    var presenter: HomePresenterContract?
    
    var router: HomeRouter?
    
    // List of categories to display
    var categories: [MainCategory] = [];
    
    // tableView reference
    @IBOutlet weak var tableView: UITableView!
    
    var section: MainSection {
        get {
            return presenter?.section ?? .movies;
        }
    };
    
    override func viewDidLoad() {
        super.viewDidLoad();
        presenter?.viewDidLoad();
        tableView.tableFooterView = UIView();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router?.prepare(for: segue);
    }
    
    func display(categories: [MainCategory]) {
        self.categories = categories;
        self.tableView.reloadData();
    }
    
    func display(section: MainSection) {
        self.title = section.title;
    }
    
    deinit {
        presenter = nil;
        router = nil;
    }

}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // dequeue cell
        let cell: MainCategoryCell = tableView.dequeueReusableCell(withIdentifier: "MainCategoryCell") as! MainCategoryCell;
        
        // configure cell
        let category: MainCategory = categories[indexPath.row];
        cell.display(category);
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false);
        let category = categories[indexPath.row];
        switch( section ) {
            case .movies:
                router?.navigateToMovieList(category: category);
            case .tvShows:
                router?.navigateToShowList(category: category);
        }
    }
    
}
