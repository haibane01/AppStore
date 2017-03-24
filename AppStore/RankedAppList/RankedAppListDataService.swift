//
//  RankedAppListDataService.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 22..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
class RankedAppListDataService {
    func fetchRankedAppList(completeHandler:@escaping ((_ RankedAppList: [RankedAppType]?)->()))
    {
        Alamofire.request("https://itunes.apple.com/kr/rss/topfreeapplications/limit=50/genre=6015/json").responseObject { (response: DataResponse<RankedAppList>) in
            completeHandler(response.result.value?.feed?.entry)
        }
    }
}
