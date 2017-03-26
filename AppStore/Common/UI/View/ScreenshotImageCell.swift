//
//  ScreenshotImageCell.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

final class ScreenshotImageCell: UITableViewCell, SlideImageViewContainerType {
    
    @IBOutlet weak var slideImageView: SlideImageView?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(with urls: [URL]?) {
        slideImageView?.data = urls
    }

}
