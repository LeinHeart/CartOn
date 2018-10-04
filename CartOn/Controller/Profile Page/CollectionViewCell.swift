//
//  CollectionViewCell.swift
//  CartOn
//
//  Created by Ricky Adi Kuncoro on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var images: String? {
        didSet{
            if let imageName = images {
                imageView.image = UIImage(named: imageName)
            }
        }
    }
    
    let imageView:UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    let likeIcon = UIImageView.init()
    let likeCount = UILabel.init()
    let titleLabel = UILabel.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        backgroundColor = .white
        setCellShadow()
        
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 0.4
        imageView.clipsToBounds = true
        addSubview(imageView)
        imageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.frame.size.width, height: 137)
        
        likeIcon.image = UIImage(named: "like")
        likeIcon.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        addSubview(likeIcon)
        likeIcon.setAnchor(top: nil, left: self.leftAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: -10, paddingRight: 0, width: 18, height: 18)
      
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
