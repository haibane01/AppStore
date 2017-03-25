//
//  AppDetailPresenter.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

class AppDetailViewPresenter: AppDetailViewPresenterProtocol {
    lazy var appDetailViewInteractor: AppDetailViewInteractorProtocol? = AppDetailViewInteractor()
    var app: AppType?
    var appDetailViewRouter: AppDetailViewWireframeProtocol?
    weak var appDetailView: AppDetailViewProtocol?
    var appDetail: AppDetailType?
    
    func viewDidLoad() {
        appDetailViewInteractor?.appDetailViewPresenter = self
        appDetailViewInteractor?.fetch(to: self.app)
    }
    
    func didReceive(_ appDetail:AppDetailType?)
    {
        self.appDetail = appDetail
        appDetailView?.show(from: appDetail)
    }
}
