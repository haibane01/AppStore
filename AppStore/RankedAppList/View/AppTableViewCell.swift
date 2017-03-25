//
//  AppCollectionViewCell.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 23..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

class AppTableViewCell: UITableViewCell, AppViewContainerType, AppViewType{
    
    @IBOutlet weak var rankLabel: UILabel?
    @IBOutlet weak var iconImageView: UIImageView?
    @IBOutlet weak var titleLabel: UILabel?

    var appView: AppViewType? {
        return self
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        iconImageView?.roundCorner(radius: 6, color: UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 1).cgColor)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        rankLabel?.text = ""
        iconImageView?.image = nil
        titleLabel?.text = ""
    }
}
