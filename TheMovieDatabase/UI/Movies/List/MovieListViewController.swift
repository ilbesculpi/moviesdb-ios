//
//  MovieListViewController.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class MovieListViewController: BaseViewController, MovieListViewContract {
	
	// MARK: - Properties
    var presenter: MovieListPresenterContract?
	var router: MovieListRouterContract?
    var movies: [Movie] = [];
	
	// MARK: - IBOutlet
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
	
	// MARK: - MovieListViewContract
	
    func display(category: Criteria) {
		self.title = NSLocalizedString("\(category.rawValue) Movies", comment: "");
    }
    
    func display(movies: [Movie]) {
        self.movies = movies;
        tableView.reloadData();
    }

}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension MovieListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MovieCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell;
        let movie: Movie = movies[indexPath.row];
        cell.display(movie);
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false);
		let movie: Movie = movies[indexPath.row];
		router?.navigateToMovieDetail(movie: movie);
    }
    
}
