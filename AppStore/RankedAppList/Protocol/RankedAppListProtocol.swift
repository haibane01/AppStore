//
//  RankedAppListProtocol.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation

protocol RankedAppListViewProtocol: class {
    var rankedAppListViewPresentor: RankedAppListViewPresentorProtocol {get set}
    func show(from rankedAppList:[RankedAppType]?)
}

protocol RankedAppListViewPresentorProtocol: class {
    weak var rankedAppListView: RankedAppListViewProtocol? {get set}
    func viewDidLoad()
    func didSelect(_ rankedApp: RankedAppType?)
    func didReceive(_ rankedAppList:[RankedAppType]?)
}

protocol RankedAppListViewInteractorProtocol: class {
    weak var rankedAppListViewPresentor: RankedAppListViewPresentorProtocol? {get set}
    
    func fetch(to category:RankedAppCategoryType?)
}
