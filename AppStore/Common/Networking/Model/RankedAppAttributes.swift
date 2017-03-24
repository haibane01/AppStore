//
//  RankedAppAttributes.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 22..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
import ObjectMapper

class RankedAppAttributes: Mappable {
    var attributes: Dictionary<String, Any>?
    var label: String?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        attributes <- map["attributes"]
        label <- map["label"]
    }
}
