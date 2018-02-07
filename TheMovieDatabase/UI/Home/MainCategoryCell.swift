//
//  MainCategoryCell.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

class MainCategoryCell: UITableViewCell {

    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib();
    }
    
    func display(_ category: MainCategory) {
        iconView.image = category.icon;
        labelTitle.text = category.title;
    }

}
