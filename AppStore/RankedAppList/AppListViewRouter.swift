//
//  AppListViewRouter.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

class AppListViewRouter: AppListViewWireframeProtocol {
    static func createViewController(category: AppCategoryType?) -> UIViewController
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let presenter = AppListViewPresenter()
        presenter.category = category
        presenter.appListViewRouter = AppListViewRouter()
        
        let vc = storyboard.instantiateViewController(withIdentifier: "AppListViewController") as! AppListViewController
        vc.appListViewPresenter = presenter
        
        return vc
    }
    
    func presentAppDetailView(from view:AppListViewProtocol , _ app: AppType)
    {
        let viewController = AppDetailViewRouter.createViewController(app: app)
        if let sourceView = view as? UIViewController {
            sourceView.navigationController?.pushViewController(viewController, animated: true)
        }
    }

}
