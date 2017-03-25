//
//  AppDetailViewHeaderViewContainerType.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation

protocol AppDetailHeaderViewContainerType: AppViewContainerType {
    var appDetailHeaderView: AppDetailHeaderViewType? {get}
    func configure(with appDetailHeaderType: AppDetailHeaderType)
}

extension AppDetailHeaderViewContainerType {
    func configure(with appDetailHeaderType: AppDetailHeaderType) {
        configure(with: appDetailHeaderType as AppType)
        
        if let rating = appDetailHeaderType.rating {
            if let ratingView = appDetailHeaderView?.ratingView as? RatingViewType
            {
                
                ratingView.rating = rating
            }
        }
    }
}
