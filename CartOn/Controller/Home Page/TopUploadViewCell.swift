//
//  TopUploadViewCell.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class TopUploadViewCell: UICollectionViewCell,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    var images:[String]?{
        didSet{
            collectionView.reloadData()
        }
    }
    
    var title:[String]?{
        didSet{
            collectionView.reloadData()
        }
    }
    
    var uploader:[String]?{
        didSet{
            collectionView.reloadData()
        }
    }
    
    var likeCount:[Int]?{
        didSet{
            collectionView.reloadData()
        }
    }
    
    var descriptionImage:[String]?{
        didSet{
            collectionView.reloadData()
        }
    }
    
    let topView = UIView.init()
    
    let collectionView :UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //cv.backgroundColor = .orange
        cv.backgroundColor = .clear
        
        return cv
    }()
    
    let topTitle : UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 20)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    let cellId = "cellId"
    
    func setup(){
        
        topView.backgroundColor = .orange
        topView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
        addSubview(topView)
        
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(IconsCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.showsHorizontalScrollIndicator = false
        //collectionView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        topTitle.text = "Top Upload"
        
        topView.addSubview(topTitle)
        topView.addSubview(collectionView)
        
        
        topTitle.setAnchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.width, height: 20)
        
        collectionView.setAnchor(top: topTitle.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: frame.width, height: 0)
        
        //collectionView.setAnchor(top: topView.topAnchor, left: topView.leftAnchor, bottom: bottomAnchor, right: nil , paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        //topTitle.setAnchor(top: topAnchor, left: leftAnchor, bottom: collectionView.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return (images?.count)!
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId , for: indexPath) as! IconsCell
        if let imageName = images?[indexPath.item]{
            cell.imageView.image = UIImage(named: imageName)
        }
        if let titleName = title?[indexPath.item]{
            cell.titleLabel.text = titleName
        }
        if let uploaderName = uploader?[indexPath.item]{
            cell.uploaderLabel.text = uploaderName
        }
        if let likeCount = likeCount?[indexPath.item]{
            cell.likeCount.text = String(likeCount)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (frame.width / 2) - 20 , height: (frame.width / 2) * 1.25)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private class IconsCell: UICollectionViewCell{
        
        let imageView:UIImageView = {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFill
            iv.clipsToBounds = true
            iv.layer.cornerRadius = 15
            return iv
        }()
        
        let uploaderLabel  : UILabel = {
            let tl = UILabel()
            tl.font = UIFont(name: "Avenir-medium", size: 11)
            tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            return tl
        }()
        
        let titleLabel  : UILabel = {
            let tl = UILabel()
            tl.font = UIFont(name: "Avenir-medium", size: 11)
            tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            return tl
        }()
        
        let likeCount  : UILabel = {
            let tl = UILabel()
            tl.font = UIFont(name: "Avenir-medium", size: 11)
            tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            return tl
        }()
        
        let likeIcon = UIImageView.init()
        
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setup()
        }
        
        func setup(){
            setCellShadow()
            backgroundColor = .white
            
            uploaderLabel.text = "Nama Upload"
            addSubview(uploaderLabel)
            uploaderLabel.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0 )
            
            addSubview(imageView)
            imageView.setAnchor(top: uploaderLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -30, paddingRight: 0, width: self.frame.size.width, height: self.frame.size.height / 2 * 1.35)
            
            titleLabel.text = "Title Gambar"
            titleLabel.frame = CGRect(x: 0, y: 15, width: 0, height: 0)
            addSubview(titleLabel)
            titleLabel.setAnchor(top: imageView.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
            
            likeIcon.image = UIImage(named: "like")
            likeIcon.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            addSubview(likeIcon)
            likeIcon.setAnchor(top: nil, left: self.leftAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: -10, paddingRight: 0,width: 18,height: 18)
            
            likeCount.text = "100"
            likeCount.font = UIFont(name: "Avenir-Medium", size: 11)
            likeCount.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            
            addSubview(likeCount)
            likeCount.setAnchor(top: nil, left: likeIcon.rightAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: -10, paddingRight: 0 )
            
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}


