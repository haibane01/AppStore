//
//  RankedAppFeed.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 22..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
import ObjectMapper

class RankedAppListFeed: Mappable {
    var entry: Array<RankedApp>?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        entry <- map["entry"]
    }

}
