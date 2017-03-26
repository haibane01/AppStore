//
//  UIViewExtension.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit
extension UIView
{    
    public func roundCorner(radius: CGFloat, color: CGColor) {
        layer.borderWidth = 1 / UIScreen.main.scale
        layer.borderColor = color
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
}
