//
//  ProfileHeaderView.swift
//  CartOn
//
//  Created by Ricky Adi Kuncoro on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class ProfileHeaderView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    let name = UILabel.init()
    let origin = UILabel.init()
    var profilePict = UIImageView.init()
    let viewPost = UIView.init()
    let viewFollowers = UIView.init()
    let viewFollowing = UIView.init()
    
    let labelPost = UILabel.init()
    let labelCountPost = UILabel.init()
    var countPost = Int()
    
    let labelFollowers = UILabel.init()
    let labelCountFollowers = UILabel.init()
    
    let labelFollowing = UILabel.init()
    let labelCountFollowing = UILabel.init()
    
    func setup() {
        backgroundColor = .white
        self.layer.shadowColor = UIColor.orange.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0.4)
        self.layer.shadowOpacity = 0.4
        self.layer.shadowRadius = 1.0
        
        //set profile picture
        profilePict.image = UIImage(named: "profPic")
        profilePict.frame = CGRect(x: 25, y: 20, width: 90, height: 90)
        profilePict.contentMode = .scaleAspectFit
        profilePict.layer.cornerRadius =  self.profilePict.frame.size.width / 2
        profilePict.clipsToBounds = true
        addSubview(profilePict)
        
        //set name
        name.text = "Firdenon"
        name.frame = CGRect(x: 0, y: 0, width: 50, height: 10)
        name.font = UIFont(name: "Avenir-Heavy", size: 20)
        addSubview(name)
        name.setAnchor(top: profilePict.topAnchor, left: profilePict.rightAnchor, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        
        //set location
        origin.text = "Indonesia"
        origin.frame = CGRect(x: 0, y: 0, width: 50, height: 10)
        origin.font = UIFont(name: "Avenir-Book", size: 18)
        origin.textColor = UIColor.gray
        addSubview(origin)
        origin.setAnchor(top: name.bottomAnchor, left: profilePict.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        
        //set post, followers & following container
        viewPost.backgroundColor = .orange
        viewPost.frame = CGRect(x: 0, y: 0, width: self.frame.size.width / 3, height: 48)
        viewPost.layer.borderColor = UIColor.white.cgColor
        viewPost.layer.borderWidth = 0.2
        
        viewFollowers.backgroundColor = .orange
        viewFollowers.frame = CGRect(x: 0, y: 0, width: self.frame.size.width / 3, height: 48)
        viewFollowers.layer.borderColor = UIColor.white.cgColor
        viewFollowers.layer.borderWidth = 0.2
        
        viewFollowing.backgroundColor = .orange
        viewFollowing.frame = CGRect(x: 0, y: 0, width: self.frame.size.width / 3, height: 48)
        viewFollowing.layer.borderColor = UIColor.white.cgColor
        viewFollowing.layer.borderWidth = 0.2
        
        addSubview(viewPost)
        addSubview(viewFollowers)
        addSubview(viewFollowing)
        
        viewPost.setAnchor(top: nil, left: self.leftAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.frame.size.width / 3, height: 48)
        
        viewFollowers.setAnchor(top: nil, left: viewPost.rightAnchor , bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.frame.size.width / 3, height: 48)
        
        viewFollowing.setAnchor(top: nil, left: viewFollowers.rightAnchor , bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.frame.size.width / 3, height: 48)
        
        labelPostSetup()
        labelFollowersSetup()
        labelFollowingSetup()
    }
    
    //set post view
    func labelPostSetup(){
        //labelCountPost.text = "8"
        labelCountPost.textAlignment = .center
        labelCountPost.font = UIFont(name: "Avenir-Heavy", size: 14)
        labelCountPost.textColor = .white
        
        labelCountPost.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        viewPost.addSubview(labelCountPost)
        labelCountPost.setAnchor(top: viewPost.topAnchor, left: viewPost.leftAnchor, bottom: nil, right: viewPost.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: viewPost.frame.size.width, height: 12)
        
        
        
        labelPost.text = "Pos"
        labelPost.textAlignment = .center
        labelPost.font = UIFont(name: "Avenir-Book", size: 12)
        labelPost.textColor = .white
        
        labelPost.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        viewPost.addSubview(labelPost)
        labelPost.setAnchor(top: labelCountPost.bottomAnchor, left: viewPost.leftAnchor, bottom: nil, right: viewPost.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: viewPost.frame.size.width, height: 12.5)
    }
    
    //set followers view
    func labelFollowersSetup(){
        
        labelCountFollowers.text = "5"
        labelCountFollowers.textAlignment = .center
        labelCountFollowers.font = UIFont(name: "Avenir-Heavy", size: 14)
        labelCountFollowers.textColor = .white
        
        labelCountFollowers.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        viewFollowers.addSubview(labelCountFollowers)
        labelCountFollowers.setAnchor(top: viewFollowers.topAnchor, left: viewFollowers.leftAnchor, bottom: nil, right: viewFollowers.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: viewFollowers.frame.size.width, height: 12)
        
        labelFollowers.text = "Pengikut"
        labelFollowers.textAlignment = .center
        labelFollowers.font = UIFont(name: "Avenir-Book", size: 12)
        labelFollowers.textColor = .white
        
        labelFollowers.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        viewFollowers.addSubview(labelFollowers)
        labelFollowers.setAnchor(top: labelCountFollowers.bottomAnchor, left: viewFollowers.leftAnchor, bottom: nil, right: viewFollowers.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: viewFollowers.frame.size.width, height: 12.5)
    }
    
    //set following view
    func labelFollowingSetup(){
        
        labelCountFollowing.text = "2000"
        labelCountFollowing.textAlignment = .center
        labelCountFollowing.font = UIFont(name: "Avenir-Heavy", size: 14)
        labelCountFollowing.textColor = .white
        
        labelCountFollowing.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        viewFollowing.addSubview(labelCountFollowing)
        labelCountFollowing.setAnchor(top: viewFollowing.topAnchor, left: viewFollowing.leftAnchor, bottom: nil, right: viewFollowing.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: viewFollowing.frame.size.width, height: 12)
        
        labelFollowing.text = "Mengikuti"
        labelFollowing.textAlignment = .center
        labelFollowing.font = UIFont(name: "Avenir-Book", size: 12)
        labelFollowing.textColor = .white
        
        labelFollowing.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        viewFollowing.addSubview(labelFollowing)
        labelFollowing.setAnchor(top: labelCountFollowing.bottomAnchor, left: viewFollowing.leftAnchor, bottom: nil, right: viewFollowing.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: viewFollowing.frame.size.width, height: 12.5)
    }
    
    func takeCountData(count: Int){
        countPost = count
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

