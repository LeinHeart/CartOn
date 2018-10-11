//
//  ProfileViewController.swift
//  CartOn
//
//  Created by Ricky Adi Kuncoro on 03/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK Dummy data
    let topUploadImageArray = ["image1","image2","image3","image4","image5"]
    let uploadImageArray = ["upload1","upload2","upload3","upload4","upload5","upload6","upload7","upload8"]
    let titleArray = ["kucing pisang","kucing kotak","monster merah","monster biru","monster kumbang","kucing gemes","kucing imut","kucing lope lope"]
    var post = PostList().profileList
    
    
    //MARK Setup
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        post.reverse()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cellid")
        collectionView.register(ProfileHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
        collectionView.showsVerticalScrollIndicator = false
        
        
        view.addSubview(collectionView)
        collectionView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        let editButton = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(ProfileViewController.editBtnAction))
        
        navigationItem.rightBarButtonItem = editButton
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(editBtnAction))
    }
    
    //MARK CollectionView : cell
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return post.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath) as! CollectionViewCell
        cell.images = post[indexPath.item].image
        cell.title = post[indexPath.item].imageTitle
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:(view.frame.width / 2) - 20, height: (view.frame.width / 2) * 1.25) //375
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        detail(name: post[indexPath.item].imageTitle, uploader: post[indexPath.item].uploaderName, image: post[indexPath.item].image, likeCount: post[indexPath.item].likeCount, description: post[indexPath.row].imageDescription!, tag: post[indexPath.row].tags)
    }
    
    // MARK CollectionView : header
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        var element = UICollectionReusableView()
        
        if kind == UICollectionView.elementKindSectionHeader{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! ProfileHeaderView
            element = header
        }
        return element
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 180)
    }
    
    @objc func editBtnAction() {
        navigationController?.pushViewController(EditProfileViewController(), animated: true)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func detail(name: String, uploader: String, image: String, likeCount: Int, description: String ,tag:[String]) {
        let dt = PostDetailViewController()
        dt.setData(name: name, uploader: uploader, image: image, likeCount: likeCount, description: description, tag: tag)
        self.navigationController?.pushViewController(dt, animated: true)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func appendData(name: String, title: String, description: String?, tags: [String]!, like: Int!, image: String!){
        post.append(PostClass(uploaderName: name, imageTitle: title, imageDescription: description, tags: tags, likeCount: like, image: image))
    }
    
}

