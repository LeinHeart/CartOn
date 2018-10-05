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
    
    let titleLabel = UILabel.init()
    let uploaderLabel = UILabel.init()
    let jumlahLike = UILabel.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup(){
        backgroundColor = .red
        //backgroundColor = .clear
        setCellShadow()
        
        uploaderLabel.text = "Nama Uploader"
        uploaderLabel.frame = CGRect(x: 0, y: 0, width: 150, height: 20)
        
        titleLabel.text = "Title Gambar"
        titleLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 10)
        
        jumlahLike.text = "100"
        jumlahLike.frame = CGRect(x: 0, y: 0, width: 100, height: 10)
        
        addSubview(uploaderLabel)
        addSubview(titleLabel)
        addSubview(jumlahLike)
        addSubview(imageView)
        
        imageView.setAnchor(top: uploaderLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0,width: 0,height: 200)
        titleLabel.setAnchor(top: imageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0,width: 0,height: 50)
        jumlahLike.setAnchor(top: titleLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0,width: 0,height: 10 )
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

