//
//  TVShowListViewController.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/8/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class TVShowListViewController: BaseViewController, TVShowListViewContract {

    var presenter: TVShowListPresenterContract?
    var shows: [TVShow] = [];
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        tableView.tableFooterView = UIView();
        presenter?.viewDidLoad();
    }
    
    func display(category: MainCategory) {
        self.title = "\(category.title) TV Shows";
    }
    
    func display(shows: [TVShow]) {
        self.shows = shows;
        tableView.reloadData();
    }

}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension TVShowListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shows.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TVShowCell = tableView.dequeueReusableCell(withIdentifier: "TVShowCell") as! TVShowCell;
        let show: TVShow = shows[indexPath.row];
        cell.display(show);
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false);
    }
    
}
