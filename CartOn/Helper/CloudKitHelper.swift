//
//  CloudKitHelper.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 24/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import Foundation
import CloudKit
import UIKit

class CloudKitHelper {
    
    func createNewPost(post: PostClass) {
        let postRecord = CKRecord(recordType: "Post")
        postRecord["uploaderName"] = post.uploaderName
        postRecord["title"] = post.imageTitle
        postRecord["imageDescription"] = post.imageDescription
        postRecord["likeCount"] = post.likeCount
        postRecord["tags"] = post.tags
        
        do{
            let url = try post.image.saveToTemporaryLocation()
            postRecord["image"] = CKAsset(fileURL: url)
            saveRecordToPublic(record: postRecord)
        }catch{
            print(error.localizedDescription + "createNewPost")
        }
        
    }
    
    func saveRecordToPublic(record: CKRecord){
        let container = CKContainer.default()
        let database = container.publicCloudDatabase
        
        database.save(record) { (newRecord, error) in
            if let err = error {
                print(err.localizedDescription + "saveRecordToPublic")
            }
            if let r = newRecord{
                print(r)
            }
        }
    }
    
    func fetchPostRecord(suc: @escaping (_ post: [PostClass]) -> Void) -> [PostClass]? {
        let container = CKContainer.default()
        let database = container.publicCloudDatabase
        
        let predicate = NSPredicate(value: true)
        
        var result:[PostClass] = []
        let query = CKQuery(recordType: "Post", predicate: predicate)
        database.perform(query, inZoneWith: nil) { (records, error) in
            if let err = error{
                print(err.localizedDescription + "fetchPostRecord")
            }
            
            if let fetchedRecords = records {
                print(fetchedRecords)
                for index in fetchedRecords {
                    result.append(self.decodeCKRecordToPost(record: index)!)
                }
                suc(result)
            }
            
        }
        return result
    }
    
    func decodeCKRecordToPost(record: CKRecord) -> PostClass? {
        let title = record["title"] as? String
        let uploaderName = record["uploaderName"] as? String
        let likeCount = record["likeCount"] as? Int
        let imageDescription = record["imageDescription"] as? String
        let tags = record["tags"] as? [String]
        let image = record["image"] as? CKAsset
        do{
            let image = try Data(contentsOf: (image?.fileURL)!)
            let uiimage = UIImage(data: image)
            let post = PostClass(uploaderName: uploaderName!, imageTitle: title!, imageDescription: imageDescription!, tags: tags, likeCount: likeCount)
            post.addImageFromUiImage(image: uiimage!)
            return post
        }
        catch{
            print(error.localizedDescription + "decodeCKRecord")
        }
        return nil
    }
    
    
    
}
