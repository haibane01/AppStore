//
//  UIStackViewExtension.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

extension UIStackView {
    func removeAllArrangedSubview() {
        for subview in self.arrangedSubviews {
            self.removeArrangedSubview(subview)
            subview.removeFromSuperview()
        }
    }
}
