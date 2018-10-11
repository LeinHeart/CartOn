//
//  PostList.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 08/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import Foundation

class PostList{
    var uploadList = [PostClass]()
    var topUploadList = [PostClass]()
    var subsList = [PostClass]()
    var profileList = [PostClass]()
    
    init(){
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"upload1"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"upload2"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"upload3"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"upload4"))
        uploadList.append(PostClass(uploaderName: "Ricky", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"upload5"))
        uploadList.append(PostClass(uploaderName: "Nyunyud", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"upload6"))
        uploadList.append(PostClass(uploaderName: "Kris", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"upload7"))
        uploadList.append(PostClass(uploaderName: "Jul", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"upload8"))
        
        
        subsList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        subsList.append(PostClass(uploaderName: "Eric Bictor", imageTitle: "Kucing Apel", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub2"))
        subsList.append(PostClass(uploaderName: "Eric Biji", imageTitle: "Kucing Mangga", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub3"))
        subsList.append(PostClass(uploaderName: "Eric", imageTitle: "Kucing Makan Sushi", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub4"))
        subsList.append(PostClass(uploaderName: "Eric-Kun", imageTitle: "Kucing Naga", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub5"))
        
        
        topUploadList.append(PostClass(uploaderName: "Eric", imageTitle: "Bare Bear 1", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image1"))
        topUploadList.append(PostClass(uploaderName: "Julius", imageTitle: "Bare Bear 2", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image2"))
        topUploadList.append(PostClass(uploaderName: "Kristopher", imageTitle: "Bare Bear 3", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image3"))
        topUploadList.append(PostClass(uploaderName: "Ricky", imageTitle: "Bare Bear 4", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image4"))
        topUploadList.append(PostClass(uploaderName: "Yudha", imageTitle: "Bare Bear 5", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image5"))
        
        
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        
    }
}
