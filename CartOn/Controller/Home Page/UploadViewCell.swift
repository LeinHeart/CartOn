//
//  UploadViewCell.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class UploadViewCell: UICollectionViewCell{
    
    var uploadImages: String? {
        didSet{
            if let imageName = uploadImages {
                imageView.image = UIImage(named: imageName)
            }
        }
    }
    
    let imageView:UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 15
        return iv
    }()
    
    var titleLabel : UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 11)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    var uploaderLabel : UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 11)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    var likeCount = UILabel.init()
    var likeIcon = UIImageView.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup(){
        backgroundColor = .white
        //backgroundColor = .clear
        setCellShadow()
        
//        uploaderLabel.text = "Nama Uploader"
        uploaderLabel.frame = CGRect(x: 0, y: 0, width: 150, height: 20)
        
//        titleLabel.text = "Title Gambar"
        
        
//        likeCount.text = "100"
        likeCount.font = UIFont(name: "Avenir-Medium", size: 11)
        likeCount.frame = CGRect(x: 0, y: 0, width: 100, height: 10)
        
        likeIcon.image = UIImage(named: "like")
        likeIcon.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        
        addSubview(uploaderLabel)
        addSubview(titleLabel)
        addSubview(imageView)
        addSubview(likeIcon)
        addSubview(likeCount)
        
        uploaderLabel.setAnchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        imageView.setAnchor(top: uploaderLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0,width: self.frame.size.width,height: self.frame.size.height / 2 * 1.35)
        titleLabel.setAnchor(top: imageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        likeIcon.setAnchor(top: nil, left: self.leftAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: -10, paddingRight: 0,width: 18,height: 18)
        likeCount.setAnchor(top: nil, left: likeIcon.rightAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: -10, paddingRight: 0 )
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

