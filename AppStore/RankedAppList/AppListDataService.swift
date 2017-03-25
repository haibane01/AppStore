//
//  AppListDataService.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 22..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
class AppListDataService {
    func fetchAppList(category:AppCategoryType, completeHandler:@escaping ((_ AppList: [AppType]?)->()))
    {
        if let categorySerial = category.serial {
            Alamofire.request("https://itunes.apple.com/kr/rss/topfreeapplications/limit=50/genre=\(categorySerial)/json").responseObject { (response: DataResponse<AppList>) in
                completeHandler(response.result.value?.feed?.entry)
            }
        }
    }
}
