//
//  ArrayExtension.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import Foundation
extension Array {
    public func item(at index: Int) -> Element? {
        guard 0..<count ~= index else { return nil }
        return self[index]
    }

}
