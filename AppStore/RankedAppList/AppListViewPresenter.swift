//
//  AppListPresenter.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

final class AppListViewPresenter: AppListViewPresenterProtocol {
    var appList: [AppType]?
    lazy var appListViewInteractor: AppListViewInteractorProtocol? = AppListViewInteractor()
    lazy var appListViewRouter: AppListViewWireframeProtocol? = AppListViewRouter()
    weak var appListView: AppListViewProtocol?
    var category: AppCategoryType?
    
    func viewDidLoad()
    {
        self.updateViewTitle()
        appListViewInteractor?.appListViewPresenter = self
        appListViewInteractor?.fetch(to: category)
    }
    
    func didSelect(_ app: AppType?) {
        guard let app = app,
            let appListView = self.appListView else {
                return
        }
            
        appListViewRouter?.presentAppDetailView(from: appListView, app)
    }
    
    func didReceive(_ appList:[AppType]?) {
        if let appList = appList {
            for (index, var app) in appList.enumerated()
            {
                app.index = index + 1
            }
        }
        self.appList = appList
        appListView?.show(from: appList)
    }
    
    private func updateViewTitle()
    {
        if let viewController = appListView as? UIViewController {
            viewController.title = category?.name
        }
    }

}
