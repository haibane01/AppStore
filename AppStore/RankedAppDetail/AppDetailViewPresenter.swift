//
//  AppDetailPresenter.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

enum AppDetailViewSection: Int {
    case header = 0, screenshot = 1, description = 2
}

final class AppDetailViewPresenter: AppDetailViewPresenterProtocol {
    
    lazy var appDetailViewInteractor: AppDetailViewInteractorProtocol? = AppDetailViewInteractor()
    var app: AppType?
    var appDetailViewRouter: AppDetailViewWireframeProtocol?
    weak var appDetailView: AppDetailViewProtocol?
    var appDetail: AppDetailType?
    
    var sectionCount: Int = 3
    
    func rowCount(section: Int) -> Int {
        if let convertedSection = AppDetailViewSection(rawValue: section)
        {
            switch convertedSection {
            case .header:
                return 1
            case .screenshot:
                return 1
            case .description:
                return 1
            }
        }
        return 0
    }
    
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
