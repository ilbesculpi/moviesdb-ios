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
	
	// MARK: - Properties
	
    var presenter: HomePresenterContract?
    
    var router: HomeRouterContract?
    
    // List of categories to display
    var categories: [Criteria] = [];
	
	// Indicates which section is displaying: Movies or TV Shows
	var section: Section {
		get {
			return presenter?.section ?? .movies;
		}
	};
	
	// MARK: - IBOutlet
	
    // tableView reference
    @IBOutlet weak var tableView: UITableView!
    
	
	// MARK: - BaseViewController
	
	deinit {
		presenter = nil;
		router = nil;
	}
    
    override func viewDidLoad() {
        super.viewDidLoad();
        tableView.tableFooterView = UIView();
		presenter?.viewDidLoad();
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        presenter?.onResume();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router?.prepare(for: segue);
    }
	
	// MARK: - HomeViewContract
    
    func display(categories: [Criteria]) {
        self.categories = categories;
        self.tableView.reloadData();
    }
    
    func display(section: Section) {
        self.title = section.title;
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
        let category: Criteria = categories[indexPath.row];
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
