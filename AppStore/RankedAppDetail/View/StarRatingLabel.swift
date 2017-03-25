//
//  StarRatingLabel.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

class StarRatingLabel: UILabel, RatingViewType {
    var rating: Float? {
        didSet {
            if let rating = self.rating
            {
                self.text = "별점: \(rating)"
            }
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
