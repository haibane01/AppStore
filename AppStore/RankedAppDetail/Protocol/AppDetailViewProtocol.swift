//
//  AppDetailViewProtocol.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

protocol AppDetailViewProtocol: class {
    var appDetailViewPresenter: AppDetailViewPresenterProtocol? {get set}
    func show(from appDetail:AppDetailType?)
}


protocol AppDetailViewPresenterProtocol: class {    
    var app: AppType? {get}
    var appDetailViewRouter: AppDetailViewWireframeProtocol? {get set}
    var appDetail: AppDetailType? {get}
    weak var appDetailView: AppDetailViewProtocol? {get set}
    var sectionCount: Int {get}
    
    func rowCount(section: Int) -> Int
    func viewDidLoad()
    func didReceive(_ appDetail:AppDetailType?)
}

protocol AppDetailViewInteractorProtocol: class {
    weak var appDetailViewPresenter: AppDetailViewPresenterProtocol? {get set}
    
    func fetch(to app:AppType?)
}

protocol AppDetailViewWireframeProtocol: class {
    static func createViewController(app: AppType?) -> UIViewController
}
