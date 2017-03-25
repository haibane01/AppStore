//
//  AppFeed.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 22..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
import ObjectMapper

class AppListFeed: Mappable {
    var entry: Array<App>?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        entry <- map["entry"]
    }

}
