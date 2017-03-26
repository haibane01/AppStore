//
//  AppDetailDataService.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
final class AppDetailDataService {
    func fetchAppDetail(_ app: AppType, completeHandler:@escaping ((_ AppList: AppDetailType?)->()))
    {
        if let appID = app.id {
            Alamofire.request("https://itunes.apple.com/lookup?id=\(appID)&country=kr").responseArray(keyPath: "results") { (response: DataResponse<[AppDetail]>) in
                completeHandler(response.result.value?.first)
            }
        }
    }
}
