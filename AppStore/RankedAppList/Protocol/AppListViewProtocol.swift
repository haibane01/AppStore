//
//  AppListProtocol.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

protocol AppListViewProtocol: class {
    var appListViewPresenter: AppListViewPresenterProtocol? {get}
    func show(from appList:[AppType]?)
}

protocol AppListViewPresenterProtocol: class {
    var appListViewRouter: AppListViewWireframeProtocol? {get}
    var category: AppCategoryType? {get}
    weak var appListView: AppListViewProtocol? {get set}
    var appList: [AppType]? {get set}
    func viewDidLoad()
    func didSelect(_ app: AppType?)
    func didReceive(_ appList:[AppType]?)
}

protocol AppListViewInteractorProtocol: class {
    weak var appListViewPresenter: AppListViewPresenterProtocol? {get set}
    
    func fetch(to category:AppCategoryType?)
}

protocol AppListViewWireframeProtocol: class {
    static func createViewController(category: AppCategoryType?) -> UIViewController
    func presentAppDetailView(from view: AppListViewProtocol , _ app: AppType)
}
