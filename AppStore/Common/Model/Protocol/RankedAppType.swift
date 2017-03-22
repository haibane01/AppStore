//
//  RankedAppEntity.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 22..
//  Copyright © 2017년 haibane. All rights reserved.
//
import Foundation

protocol RankedAppType {
    var title: String? {get}
    var icon: URL? {get}
    var id: Int? {get}
    var rank: Int? {get set}
}
