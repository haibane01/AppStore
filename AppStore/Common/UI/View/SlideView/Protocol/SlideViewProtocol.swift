//
//  SlidingViewProtocol.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

protocol SlideViewProtocol: class {
    associatedtype DataType
    var data: [DataType]? {get set}
    var index:Int? {get set}
}

protocol SlideImageViewProtocol: SlideViewProtocol {
    var data: [URL]? {get set}
    var imageViewContentMode: UIViewContentMode? {get set}
}

protocol SlideImageViewContainerType {
    func configure(with urls: [URL]?)
}
