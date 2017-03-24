//
//  RankedApp.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 22..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
import ObjectMapper
class RankedApp: Mappable, RankedAppType{
    var appID: RankedAppAttributes?
    var appTitle: RankedAppAttributes?
    var appIcons: [RankedAppAttributes]?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        appID <- map["id"]
        appTitle <- map["im:name"]
        appIcons <- map["im:image"]
    }
    
    //MARK - RankedAppType
    var rank: Int?
    var title:String? {return self.appTitle?.label}
    var icon: URL? {
        if let entites = self.appIcons {
            let icons = entites.flatMap{$0.label}
            if let icon = icons.last {
                return URL(string: icon)
            }
        }
        return nil
    }
    var id: Int? {return self.appID?.attributes?["im:id"] as? Int}

}