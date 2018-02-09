//
//  TVShowCell.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/9/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit
import AlamofireImage

class TVShowCell: UITableViewCell {

    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelGenre: UILabel!
    @IBOutlet weak var labelOverview: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib();
        // configure cell
        let selectionView = UIView();
        selectionView.backgroundColor = UIColor.accentColor;
        self.selectedBackgroundView = selectionView;
    }
    
    func display(_ show: TVShow) {
        labelTitle.text = show.name;
        labelOverview.text = show.overview;
        if let posterUrl = show.posterUrl {
            let pictureUrl = URL(string: posterUrl)!
            let data = try! Data(contentsOf: pictureUrl);
            let image = UIImage(data: data)!
            pictureView.image = image;
            image.af_inflate();
        }
    }

}
