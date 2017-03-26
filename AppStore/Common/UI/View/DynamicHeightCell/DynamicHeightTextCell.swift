//
//  DynamicHeightTextCell.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 26..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

final class DynamicHeightTextCell: UITableViewCell, TextViewContainerType {
    @IBOutlet fileprivate weak var dynamicHeightTextLabel: UILabel?
    
    var textConfig: TextConfig? {
        didSet {
            textLabelConfigure()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        textLabelConfigure()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureText(text: String?) {
        dynamicHeightTextLabel?.text = text
    }
    func configureText(attributedText: NSAttributedString?) {
        dynamicHeightTextLabel?.attributedText = attributedText
    }
    
    private func textLabelConfigure() {
        dynamicHeightTextLabel?.textColor = textConfig?.fontColor
        dynamicHeightTextLabel?.font = textConfig?.font
    }
}
