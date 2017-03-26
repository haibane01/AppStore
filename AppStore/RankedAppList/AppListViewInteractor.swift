//
//  AppListViewInteractor.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation

final class AppListViewInteractor: AppListViewInteractorProtocol
{
    weak var appListViewPresenter: AppListViewPresenterProtocol?
    var category: AppCategoryType?
    func fetch(to category:AppCategoryType?) {
        if let category = category {
            self.category = category
        } else {
            let cate = AppCategory()
            cate.name = "금융"
            cate.serial = 6015
            self.category = cate
        }
        
        AppListDataService().fetchAppList(category: self.category!) {[weak self] (appList: [AppType]?) in
            self?.appListViewPresenter?.didReceive(appList)
        }
    }

}
