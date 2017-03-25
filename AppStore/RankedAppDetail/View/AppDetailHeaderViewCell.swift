//
//  AppDetailHeaderViewCell.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

class AppDetailHeaderViewCell: UITableViewCell, AppDetailHeaderViewType, AppDetailHeaderViewContainerType {

    var appView: AppViewType? {
        return self
    }
    var appDetailHeaderView: AppDetailHeaderViewType? {
        return self
    }
    var indexLabel: UILabel? = nil
    
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var iconImageView: UIImageView?
    @IBOutlet weak var ratingView: UIView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        iconImageView?.roundCorner(radius: 6, color: UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 1).cgColor)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
