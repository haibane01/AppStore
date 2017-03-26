//
//  TextViewType.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 26..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

struct TextConfig {
    var font: UIFont?
    var fontColor: UIColor?
}

protocol TextViewContainerType: class {
    var textConfig: TextConfig? {get set}
    func configureText(text: String?)
    func configureText(attributedText: NSAttributedString?)
}
