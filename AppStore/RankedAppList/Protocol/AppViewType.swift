//
//  AppViewType.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 23..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

protocol AppViewType: class {
    var rankLabel: UILabel? {get}
    var iconImageView: UIImageView? {get}
    var titleLabel: UILabel? {get}
}
