//
//  SlideImageView.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 25..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

final class SlideImageView: UIView, SlideImageViewProtocol {
    var index: Int? = 0
    var data: [URL]? {
        didSet {
            configureImageViews()
        }
    }
    var imageViewContentMode: UIViewContentMode? = .scaleToFill
    
    fileprivate var scrollView: UIScrollView?
    fileprivate var stackView: UIStackView?
    fileprivate let spacing: CGFloat = 0
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureComponent()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureComponent()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    private func configureComponent() {
        scrollView = UIScrollView()
        addSubview(scrollView!)
        scrollView?.translatesAutoresizingMaskIntoConstraints = false
        scrollView?.isPagingEnabled = true
        scrollView?.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView?.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        scrollView?.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        scrollView?.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        stackView = UIStackView()
        stackView?.translatesAutoresizingMaskIntoConstraints = false
        stackView?.axis = .horizontal
        stackView?.spacing = 5
        stackView?.spacing = spacing
        scrollView?.addSubview(stackView!)
        
        stackView?.topAnchor.constraint(equalTo: scrollView!.topAnchor).isActive = true
        stackView?.bottomAnchor.constraint(equalTo: scrollView!.bottomAnchor).isActive = true
        stackView?.leftAnchor.constraint(equalTo: scrollView!.leftAnchor).isActive = true
        stackView?.rightAnchor.constraint(equalTo: scrollView!.rightAnchor).isActive = true
        stackView?.heightAnchor.constraint(equalTo: scrollView!.heightAnchor).isActive = true
    }
    private func configureImageViews() {
        guard let data = data, !(data.isEmpty) else {
            return
        }
        
        if let stackView = self.stackView {
            stackView.removeAllArrangedSubview()
            
            for imageUrl in data {
                let imageView = UIImageView()
                imageView.af_setImage(withURL: imageUrl)
                stackView.addArrangedSubview(imageView)
                imageView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
                imageView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true

            }
        }
    }
}
