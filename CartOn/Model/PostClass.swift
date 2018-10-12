//
//  PostClass.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 08/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class PostClass{
    var uploaderName:String!
    var imageTitle:String!
    var imageDescription:String?
    var tags:[String]!
    var likeCount:Int!
    var image:UIImage!
    
    init(uploaderName:String,imageTitle:String,imageDescription:String?,tags:[String]!,likeCount:Int!) {
        self.uploaderName = uploaderName
        self.imageTitle = imageTitle
        self.imageDescription = imageDescription
        self.tags = tags
        self.likeCount = likeCount
//        self.image = UIImage(named: image!)
    }
    
//    convenience init(uploaderName:String,imageTitle:String,imageDescription:String?,tags:[String]!,likeCount:Int!,image:UIImage!) {
//        self.init(uploaderName: uploaderName, imageTitle: imageTitle, imageDescription: imageDescription, tags: tags, likeCount: likeCount)
//        self.image = image
//    }
    
    convenience init(uploaderName:String,imageTitle:String,imageDescription:String?,tags:[String]!,likeCount:Int!,image:String!) {
        self.init(uploaderName: uploaderName, imageTitle: imageTitle, imageDescription: imageDescription, tags: tags, likeCount: likeCount)
        self.image = UIImage(named: image)
    }
    
    func addImageFromUiImage(image: UIImage) {
        self.image = image
    }
    
    
    
}
