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
    public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.masksToBounds = true
            layer.cornerRadius = abs(CGFloat(Int(newValue * 100)) / 100)
        }
    }
    
    public func roundCorner(radius: CGFloat, color: CGColor) {
        layer.borderWidth = 1 / UIScreen.main.scale
        layer.borderColor = color
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
}
