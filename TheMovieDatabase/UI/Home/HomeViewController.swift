//
//  HomeViewController.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController, HomeViewContract {
    
    // Home Presenter
    var presenter: HomePresenterContract?
    
    var router: HomeRouter?
    
    var section: MainSection!
    
    // List of categories to show
    fileprivate var categories: [MainCategory] = [];
    
    // tableView reference
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        presenter?.viewDidLoad();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router?.prepare(for: segue);
    }
    
    func displayCategories(_ categories: [MainCategory]) {
        self.categories = categories;
        self.tableView.reloadData();
    }
    
    deinit {
        presenter = nil;
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
        
    }
    
}
