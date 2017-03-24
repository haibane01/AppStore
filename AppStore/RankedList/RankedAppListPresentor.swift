//
//  RankedAppListPresentor.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation

class RankedAppListViewPresentor: RankedAppListViewPresentorProtocol {
    public lazy var rankedAppListViewInteractor: RankedAppListViewInteractorProtocol? = RankedAppListViewInteractor()
    weak var rankedAppListView: RankedAppListViewProtocol?
    
    func viewDidLoad()
    {
        rankedAppListViewInteractor?.rankedAppListViewPresentor = self
        rankedAppListViewInteractor?.fetch(to: nil)
    }
    
    func didSelect(_ rankedApp: RankedAppType?) {
        
    }
    
    func didReceive(_ rankedAppList:[RankedAppType]?) {
        if let rankedAppList = rankedAppList {
            for (index, var rankedApp) in rankedAppList.enumerated()
            {
                rankedApp.rank = index + 1
            }
        }
        rankedAppListView?.show(from: rankedAppList)
    }

}
