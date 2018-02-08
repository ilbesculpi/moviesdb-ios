//
//  MovieCell.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/8/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelGenre: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib();
    }
    
    func display(_ movie: Movie) {
        labelTitle.text = movie.title;
    }

}
