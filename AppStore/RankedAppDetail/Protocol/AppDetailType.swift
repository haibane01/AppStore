//
//  AppDetailType.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation

protocol AppDetailType: AppDetailHeaderType {
    var icon: URL? {get}
    var title: String? {get}
    var rating: Float? {get}
    var images: [URL]? {get}
    var detailDescription: String? {get}
}
