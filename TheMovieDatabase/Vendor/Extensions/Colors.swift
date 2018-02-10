//
//  Colors.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/9/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(r: UInt, g: UInt, b: UInt, a: CGFloat) {
        assert(r >= 0 && r <= 255, "Invalid red component");
        assert(g >= 0 && g <= 255, "Invalid green component");
        assert(b >= 0 && b <= 255, "Invalid blue component");
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: a);
    }
    
    convenience init(rgbHex: UInt) {
        self.init(
            r:(rgbHex >> 16) & 0xff,
            g:(rgbHex >> 8) & 0xff,
            b:rgbHex & 0xff,
            a: (CGFloat((rgbHex >> 24) & 0xff))/255
        );
    }
    
}
