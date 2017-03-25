//
//  AppViewContainerType.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 23..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireImage
protocol AppViewContainerType {
    var appView: AppViewType?{get}
    func configure(with appType: AppType)
}

extension AppViewContainerType {
    func configure(with appType: AppType) {
        if let appView = self.appView {
            if let rank = appType.rank {
                appView.rankLabel?.text = "\(rank)"
            }
            appView.titleLabel?.text = appType.title
            if let iconURL = appType.icon {
                appView.iconImageView?.af_setImage(withURL: iconURL)
            }
        }
    }
}
