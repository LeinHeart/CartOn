//
//  SavedPageViewController.swift
//  CartOn
//
//  Created by Ricky Adi Kuncoro on 15/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class SavedPageViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    var data = PostList().topUploadList
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(SubscriptionViewCell.self, forCellWithReuseIdentifier: "cellId")
        
        //self.navigationItem.backBarButtonItem?.title = "asd"
        setup()
    }
    
    func setup() {
        view.addSubview(collectionView)
        
        collectionView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    //Collection View
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! SubscriptionViewCell
        cell.subscriptionNames = data[indexPath.row].image
        cell.titleLabel.text = data[indexPath.row].imageTitle
        cell.uploaderLabel.text = data[indexPath.row].uploaderName
        cell.likeCount = data[indexPath.row].likeCount
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width / 2) - 20 , height: (view.frame.width / 2) * 1.25)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        detail(name: data[indexPath.item].imageTitle, uploader: data[indexPath.item].uploaderName, image: data[indexPath.item].image, likeCount: data[indexPath.item].likeCount, description: data[indexPath.row].imageDescription!, tag: data[indexPath.row].tags)
    }
    
    func detail(name: String, uploader: String, image: UIImage, likeCount: Int, description: String ,tag:[String]) {
        let dt = PostDetailViewController()
        dt.setData(name: name, uploader: uploader, image: image, likeCount: likeCount, description: description, tag: tag)
        dt.isSaved = true
        self.navigationController?.pushViewController(dt, animated: true)
        //self.tabBarController?.tabBar.isHidden = true
    }

}
