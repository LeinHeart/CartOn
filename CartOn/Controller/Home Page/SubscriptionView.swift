//
//  PopularView.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 08/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class SubscriptionView: UIView,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var subsPost = PostList().subsList
    
    let subcriptionCellId = "subscriptionCellId"
    let subscriptionImageArray=["sub1","sub2","sub3","sub4","sub5"]
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        return cv
    }()
    
    var vcDelegate :SubscriptionDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        print("Ter init")
        addSubview(collectionView)
        collectionView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(SubscriptionViewCell.self, forCellWithReuseIdentifier: subcriptionCellId)
        subsPost.reverse()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subsPost.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: subcriptionCellId, for: indexPath) as! SubscriptionViewCell
        cell.subscriptionNames = subsPost[indexPath.row].image
        cell.titleLabel.text = subsPost[indexPath.row].imageTitle
        cell.uploaderLabel.text = subsPost[indexPath.row].uploaderName
        cell.likeCount = subsPost[indexPath.row].likeCount
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.frame.width / 2) - 20 , height: (self.frame.width / 2) * 1.25)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        vcDelegate?.detail(name: subsPost[indexPath.row].imageTitle, uploader: subsPost[indexPath.row].uploaderName, image: subsPost[indexPath.row].image, likeCount: subsPost[indexPath.row].likeCount, description: subsPost[indexPath.row].imageDescription!, tag: subsPost[indexPath.row].tags)
    }
    
    
    
}



protocol SubscriptionDelegate {
    func detail(name: String, uploader: String, image: UIImage, likeCount: Int, description: String ,tag:[String])
}
