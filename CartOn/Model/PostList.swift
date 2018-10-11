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
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 112, image:"51"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 97, image:"52"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 90, image:"53"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 100, image:"54"))
        uploadList.append(PostClass(uploaderName: "Firdenon", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 78, image:"55"))
        uploadList.append(PostClass(uploaderName: "Nyunyud", imageTitle: "Zero", imageDescription: "A Swordman with Blade", tags: ["Swordman","Fantasy","RPG"], likeCount: 100, image:"56"))
        uploadList.append(PostClass(uploaderName: "Shiro00", imageTitle: "Foxy", imageDescription: "Personification of Fox being a Warrior", tags: ["Fox","Warrior","Sword"], likeCount: 82, image:"57"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Devilia", imageDescription: "a cute Devil ready to fight~", tags: ["Devil","Wings","Cute"], likeCount: 120, image:"58"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Chocolate 'Maid'", imageDescription: "Maid with Nekomimi Ready to serve you master!", tags: ["Maid","Cat Ears","Cute"], likeCount: 110, image:"59"))
        uploadList.append(PostClass(uploaderName: "Hideki", imageTitle: "グリムノーツ", imageDescription: "Appreantice Magician", tags: ["Magician","Cute","Card"], likeCount: 92, image:"60"))
        uploadList.append(PostClass(uploaderName: "Ghalax", imageTitle: "InsFire", imageDescription: "Warrior come straight from hell", tags: ["Dark","Sword","Hell"], likeCount: 120, image:"61"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Dark Creature", imageDescription: "My version of Creature from Darkness", tags: ["Dark","Creature","Scythe"], likeCount: 151, image:"62"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Phantom", imageDescription: "Dual-Wielder Fighter from Darkness", tags: ["Darkness","Dual Sword","Creepy"], likeCount: 137, image:"63"))
        uploadList.append(PostClass(uploaderName: "Tasikumase", imageTitle: "Wizard", imageDescription: "Wizard with Fighting Type", tags: ["Wizard","Staff","Scythe"], likeCount: 120, image:"64"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Mago Energetico", imageDescription: "Ice-Type Magician", tags: ["Magician","Ice","Staff"], likeCount: 123, image:"65"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Obraztof", imageDescription: "Magician that already reach high tier", tags: ["Magician","Cool","Hand"], likeCount: 140, image:"66"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "이승희(Seung Hee Lee)", imageDescription: "Original Character inspired from Dark Knight", tags: ["Knight","Gloom","Shadow"], likeCount: 120, image:"67"))
        uploadList.append(PostClass(uploaderName: "C0l", imageTitle: "Armadura :Colecionador de Ossos", imageDescription: "Warrior with many weapons", tags: ["Warrior","Sword","Spear"], likeCount: 150, image:"68"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Archangle", imageDescription: "Archangel ready to Battle", tags: ["Archangel","Wings","Sword"], likeCount: 144, image:"69"))
        uploadList.append(PostClass(uploaderName: "L0nT", imageTitle: "Izrail ", imageDescription: "Azrael es el Arcángel de la Muerte en varias tradiciones extrabíblicas. Está presente en el sijismo, en el islamismo, en el cristianismo e incluso en el judaísmo. Su nombre deriva de “Izrail”, nombre presente en el Corán y que se traduce como “Quien a Dios ayuda”.", tags: ["Devil","Scythe","Dark"], likeCount: 130, image:"70"))
        
        
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
