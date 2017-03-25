//
//  AppDetailViewInteractor.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation

class AppDetailViewInteractor: AppDetailViewInteractorProtocol {
    weak var appDetailViewPresenter: AppDetailViewPresenterProtocol?
    
    func fetch(to app:AppType?)
    {
        if let app = app {
            AppDetailDataService().fetchAppDetail(app) {[weak self] (appDetail: AppDetailType?) in
                self?.appDetailViewPresenter?.didReceive(appDetail)
            }
        }
    }

}
