//
//  UploadViewCell.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class UploadViewCell: UICollectionViewCell{
    
    var uploadImages: UIImage? {
        didSet{
            if let imageName = uploadImages {
                imageView.image = imageName
            }
        }
    }
    
    let imageView:UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.borderWidth = 0.3
        iv.layer.borderColor = UIColor.gray.cgColor
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
    var likeCount = Int()
    var likeLabel : UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 11)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    var tags = [String]()
    
    var likeIcon = UIImageView.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup(){
        let tapRegoc = UITapGestureRecognizer(target: self, action: #selector(tapDetected))
        
        backgroundColor = .white
        setCellShadow()
        
        //titleLabel.fitTextToBounds()
        
        likeIcon.isUserInteractionEnabled = true
        likeIcon.addGestureRecognizer(tapRegoc)
        
        
        uploaderLabel.frame = CGRect(x: 0, y: 0, width: 150, height: 20)
        
        DispatchQueue.main.async {
            self.likeLabel.text = String(self.likeCount)
        }
        
        likeIcon.image = UIImage(named: "Like")
        likeIcon.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        
        addSubview(uploaderLabel)
        addSubview(titleLabel)
        addSubview(imageView)
        addSubview(likeIcon)
        addSubview(likeLabel)
        
        uploaderLabel.setAnchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        imageView.setAnchor(top: uploaderLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0,width: self.frame.size.width,height: self.frame.size.height / 2 * 1.35)
        titleLabel.setAnchor(top: imageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        likeIcon.setAnchor(top: nil, left: self.leftAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: -10, paddingRight: 0,width: 18,height: 18)
        likeLabel.setAnchor(top: nil, left: likeIcon.rightAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: -10, paddingRight: 0 )
    }
    
    @objc func tapDetected(){
        if likeIcon.image == UIImage(named: "Like"){
            
            self.likeCount += 1
            
            DispatchQueue.main.async {
                self.likeLabel.text = String(self.likeCount)
                self.likeIcon.image = UIImage(named: "Liked")
            }
            print(likeCount)
        }
        else{
            
            self.likeCount -= 1
            
            DispatchQueue.main.async {
                self.likeLabel.text = String(self.likeCount)
                self.likeIcon.image = UIImage(named: "Like")
            }
            print(likeCount)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

