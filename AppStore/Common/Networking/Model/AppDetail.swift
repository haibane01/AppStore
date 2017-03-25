//
//  AppDetail.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import ObjectMapper

class AppDetail: Mappable
{
    var artworkUrl60: String?
    var artworkUrl100: String?
    var averageUserRatingForCurrentVersion: Float?
    var trackCensoredName: String?
    var screenshotUrls: [String]?
    var description: String?

    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        artworkUrl60 <- map["artworkUrl60"]
        artworkUrl100 <- map["artworkUrl100"]
        averageUserRatingForCurrentVersion <- map["averageUserRatingForCurrentVersion"]
        trackCensoredName <- map["trackCensoredName"]
        screenshotUrls <- map["screenshotUrls"]
        description <- map["description"]
    }
}

extension AppDetail: AppDetailType, AppDetailHeaderType
{
    var rank: Int? {
        get {
            return nil
        }
        set {
            
        }
    }

    var id: Int? {
        return nil
    }

    var icon: URL? {
        if let artworkUrl100 = self.artworkUrl100 {
            return URL(string: artworkUrl100)
        }
        return nil
    }
    var title: String? {
        return trackCensoredName
    }
    var rating: Float? {
        return averageUserRatingForCurrentVersion
    }
    var images: [URL]? {
        if let screenshotUrls = self.screenshotUrls {
            return screenshotUrls.map { URL(string: $0)}.flatMap{$0}
        }
        return nil
    }
    var detailDescription: String? {
        return description
    }
}
