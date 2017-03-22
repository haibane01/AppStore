//
//  RankedAppCollectionViewCell.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 23..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

class RankedAppCollectionViewCell: UICollectionViewCell, RankedAppViewContainerType, RankedAppViewType{
    
    @IBOutlet weak var rankLabel: UILabel?
    @IBOutlet weak var iconImageView: UIImageView?
    @IBOutlet weak var titleLabel: UILabel?

    var rankedAppView: RankedAppViewType? {
        return self
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        rankLabel?.text = ""
        iconImageView?.image = nil
        titleLabel?.text = ""
    }

}

