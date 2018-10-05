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
    
    var title: String? {
        didSet{
            if let titleName = title {
                titleLabel.text = titleName
            }
        }
    }
    
    let imageView:UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let titleLabel: UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-Medium", size: 11)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    let likeIcon = UIImageView.init()
    let likeCount = UILabel.init()
    
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
        imageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.frame.size.width, height: self.frame.size.height / 2 * 1.35)
        
        //titleLabel.text = "Lorem ipsum"
        //titleLabel.font = UIFont(name: "Avenir-Medium", size: 11)
        //titleLabel.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        addSubview(titleLabel)
        titleLabel.setAnchor(top: imageView.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        
        likeIcon.image = UIImage(named: "like")
        likeIcon.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        addSubview(likeIcon)
        likeIcon.setAnchor(top: nil, left: self.leftAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: -10, paddingRight: 0, width: 18, height: 18)
        
        likeCount.text = "512"
        likeCount.font = UIFont(name: "Avenir-Medium", size: 11)
        likeCount.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        addSubview(likeCount)
        likeCount.setAnchor(top: nil, left: likeIcon.rightAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: -10, paddingRight: 0)
      
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
