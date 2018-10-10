//
//  PostDetailViewController.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 08/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class PostDetailViewController: UIViewController {

    var name = String.init()
    var image = String.init()
    var uploader = String.init()
    var likeCount = Int.init()
    
    var titleLabel :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 20)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    let imageView :UIImageView = {
        let iv = UIImageView()
//        iv.frame = CGRect(x: 0, y: 64, width: 0, height: 0)
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        
        return iv
    }()
    
    var uploaderName :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 20)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    var likeLabel :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 20)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    var likeIcon :UIImageView = {
        let iv = UIImageView()
        iv.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        iv.image = UIImage(named: "like")
        return iv
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapRegoc = UITapGestureRecognizer(target: self, action: #selector(tapDetected))
        
        likeIcon.isUserInteractionEnabled = true
        likeIcon.addGestureRecognizer(tapRegoc)
        
        DispatchQueue.main.async {
            self.likeLabel.text = String(self.likeCount)
        }
        //self.extendedLayoutIncludesOpaqueBars = true
        //self.edgesForExtendedLayout = []
        
        view.backgroundColor = .white
        
        titleLabel.text = name
        
        let imageTampung = UIImage(named: image)
        imageView.image = imageTampung
        imageView.backgroundColor = .gray
        
       
//            let ratio = imageTampung.size.width / imageTampung.size.height
//            if view.frame.width > view.frame.height{
//                let newHeight = view.frame.width / ratio
//                imageView.frame.size = CGSize(width: view.frame.width, height: newHeight)
//            }
//            else{
//                let newWidth = view.frame.height * ratio
//                imageView.frame.size = CGSize(width: newWidth, height: view.frame.height)
//            }
            
        
        
        uploaderName.text = uploader
        likeLabel.text = String(likeCount)
        
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        view.addSubview(likeIcon)
        view.addSubview(uploaderName)
        view.addSubview(likeLabel)
        
        imageView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0,width : view.frame.width, height: (imageTampung!.size.height) * (view.frame.width / (imageTampung?.size.height)!))
        titleLabel.setAnchor(top: imageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        uploaderName.setAnchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        likeIcon.setAnchor(top: uploaderName.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        likeLabel.setAnchor(top: uploaderName.bottomAnchor, left: likeIcon.rightAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        DispatchQueue.main.async {
            self.likeLabel.text = String(self.likeCount)
        }
    }
    
    
    func setData(name: String, uploader: String, image: String, likeCount: Int) {
        self.name = name
        self.image = image
        self.uploader = uploader
        self.likeCount = likeCount
    }
    
    @objc func tapDetected(){
        if likeIcon.backgroundColor == nil{
            likeIcon.backgroundColor = .orange
                self.likeCount += 1
            
            DispatchQueue.main.async {
                self.likeLabel.text = String(self.likeCount)
            }
            print(likeCount)
        }
        else{
            likeIcon.backgroundColor = nil
                self.likeCount -= 1
            
            DispatchQueue.main.async {
                self.likeLabel.text = String(self.likeCount)
            }
            print(likeCount)
        }
    }
}
