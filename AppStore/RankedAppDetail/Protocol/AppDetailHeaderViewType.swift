//
//  AppDetailViewHeaderViewType.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit
protocol RatingViewType: class {
    var rating:Float? {get set}
}

protocol AppDetailHeaderViewType: AppViewType {
    var ratingView: UIView? {get set}
}
