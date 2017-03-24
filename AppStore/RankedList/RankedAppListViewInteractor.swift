//
//  RankedAppListViewInteractor.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation

class RankedAppListViewInteractor: RankedAppListViewInteractorProtocol
{
    weak var rankedAppListViewPresentor: RankedAppListViewPresentorProtocol?
    
    func fetch(to category:RankedAppCategoryType?) {
        RankedAppListDataService().fetchRankedAppList {[weak self] (rankedAppList: [RankedAppType]?) in
            self?.rankedAppListViewPresentor?.didReceive(rankedAppList)
        }
    }

}
