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
    var image:String!
    
    init(uploaderName:String,imageTitle:String,imageDescription:String?,tags:[String]!,likeCount:Int!,image:String!) {
        self.uploaderName = uploaderName
        self.imageTitle = imageTitle
        self.imageDescription = imageDescription
        self.tags = tags
        self.likeCount = likeCount
        self.image = image
    }
    
    
}
