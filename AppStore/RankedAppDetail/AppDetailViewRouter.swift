//
//  AppDetailViewRouter.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

class AppDetailViewRouter: AppDetailViewWireframeProtocol {
    static func createViewController(app: AppType) -> UIViewController
    {
        let viewController = AppDetailViewController(nibName: "AppDetailViewController", bundle: nil)
        let appDetailViewPresenter = AppDetailViewPresenter()
        appDetailViewPresenter.appDetailView = viewController
        appDetailViewPresenter.app = app
        appDetailViewPresenter.appDetailViewInteractor = AppDetailViewInteractor()
        appDetailViewPresenter.appDetailViewRouter = AppDetailViewRouter()
        viewController.appDetailViewPresenter = appDetailViewPresenter
        return viewController
    }
}
