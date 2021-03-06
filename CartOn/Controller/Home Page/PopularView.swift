//
//  SubscriptionView.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 08/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit
import CoreData
class PopularView: UIView,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,TopUploadDelegate {
    
    
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        return cv
    }()
    
    
    let topUploadCellId = "topUploadCellId"
    let uploadCellId = "uploadCellId"
    
    var vcDelegate :PopularDelegate?
    
    var uploadPost = [PostClass]()
    
    
    //var uploadPost = PostList().uploadList
    
    
    
    var topUploadPost = PostList().topUploadList
    
    
    
    var topUploadImageArray = [UIImage]()
    var topUploadTitleArray = [String]()
    var topUploadUploaderArray = [String]()
    var topUploadLikeCountArray = [Int]()
    var topUploadDescription = [String]()
    var topUploadTags = [[String]]()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //fetchData()
        //uploadPost.reverse()
        topUploadPost.reverse()
        
        print("Ter init")
        addSubview(collectionView)
        collectionView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(TopUploadViewCell.self, forCellWithReuseIdentifier: topUploadCellId)
        collectionView.register(UploadViewCell.self, forCellWithReuseIdentifier: uploadCellId)
        
        for name in topUploadPost{
            topUploadImageArray.append(name.image)
            topUploadTitleArray.append(name.imageTitle)
            topUploadUploaderArray.append(name.uploaderName)
            topUploadLikeCountArray.append(name.likeCount)
            topUploadDescription.append(name.imageDescription!)
            topUploadTags.append(name.tags)
        }
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 1 {
            print(uploadPost.count)
            return uploadPost.count
        }
        else {return 1}
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: uploadCellId, for: indexPath) as! UploadViewCell
            cell.uploadImages = uploadPost[indexPath.row].image
            cell.titleLabel.text = uploadPost[indexPath.row].imageTitle
            cell.uploaderLabel.text = uploadPost[indexPath.row].uploaderName
            cell.likeCount = uploadPost[indexPath.row].likeCount
            cell.tags = uploadPost[indexPath.row].tags
            
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: topUploadCellId, for: indexPath) as! TopUploadViewCell
        cell.images = topUploadImageArray
        cell.title = topUploadTitleArray
        cell.uploader = topUploadUploaderArray
        cell.likeCount = topUploadLikeCountArray
        cell.descriptionImage = topUploadDescription
        cell.tags = topUploadTags
        cell.backgroundColor = .orange
        cell.vcDelegate = self as! TopUploadDelegate

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var cg = CGSize()
        if indexPath.section == 1 {
            if(self.traitCollection.horizontalSizeClass == .compact){
                return CGSize(width: (self.frame.width / 2) - 20 , height: (self.frame.width / 2) * 1.25)
            }
            else if (self.traitCollection.horizontalSizeClass == .regular){
                return CGSize(width: (self.frame.width / 3) - 20 , height: (self.frame.width / 3) * 1.25)
            }
        } else {
            if(self.traitCollection.horizontalSizeClass == .compact){
                cg = CGSize(width: self.frame.width, height: (self.frame.width / 2 ) * 1.25 + 55)
            }
            else if (self.traitCollection.horizontalSizeClass == .regular){
                cg = CGSize(width: self.frame.width, height: (self.frame.width / 3 ) * 1.25 + 55)
            }
        }
        return cg //375 842
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 1 {
            return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        }
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            vcDelegate?.detail(name: uploadPost[indexPath.row].imageTitle, uploader: uploadPost[indexPath.row].uploaderName, image: uploadPost[indexPath.row].image, likeCount: uploadPost[indexPath.row].likeCount, description: uploadPost[indexPath.row].imageDescription!, tag: uploadPost[indexPath.row].tags)
        }
        
    }
    
    func detail(name: String, uploader: String, image: UIImage, likeCount: Int, description: String ,tag:[String]) {
        vcDelegate?.detail(name: name, uploader: uploader, image: image, likeCount: likeCount, description: description, tag: tag)
    }
    
    

}

protocol PopularDelegate {
    func detail(name: String, uploader: String, image: UIImage, likeCount: Int, description: String ,tag:[String])
}
