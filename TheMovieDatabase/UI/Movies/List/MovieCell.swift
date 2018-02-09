//
//  MovieCell.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/8/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelGenre: UILabel!
    @IBOutlet weak var labelOverview: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib();
    }
    
    func display(_ movie: Movie) {
        labelTitle.text = movie.title;
        labelOverview.text = movie.overview;
        if let posterUrl = movie.posterUrl {
            let pictureUrl = URL(string: posterUrl)!
            let data = try! Data(contentsOf: pictureUrl);
            let image = UIImage(data: data)!
            pictureView.image = image;
            image.af_inflate();
        }
    }

}
