//
//  PostImage+CoreDataProperties.swift
//  
//
//  Created by Kristopher Chayadi on 12/10/18.
//
//

import Foundation
import CoreData


extension PostImage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PostImage> {
        return NSFetchRequest<PostImage>(entityName: "PostImage")
    }

    @NSManaged public var title: String?
    @NSManaged public var image: NSData?
    @NSManaged public var uploader: String?
    @NSManaged public var imgDesc: String?
    @NSManaged public var arrayOfTags: NSData?
    @NSManaged public var likeCount: Int16

}
