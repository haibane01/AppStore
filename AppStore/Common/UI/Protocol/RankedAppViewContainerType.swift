//
//  RankedAppViewContainerType.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 23..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
import AlamofireImage
protocol RankedAppViewContainerType {
    var rankedAppView: RankedAppViewType?{get}
    func configure(with rankedAppType: RankedAppType)
}

extension RankedAppViewContainerType {
    func configure(with rankedAppType: RankedAppType) {
        if let rankedAppView =  self.rankedAppView {
            rankedAppView.rankLabel?.text = "\(rankedAppType.rank)"
            rankedAppView.titleLabel?.text = rankedAppType.title
            if let iconURL = rankedAppType.icon {
                rankedAppView.iconImageView?.af_setImage(withURL: iconURL)
            }
        }
    }
}
