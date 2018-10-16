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
    var savedList = [PostClass]()
    
    init(){
        
        //MARK : Upload List
        //51-60
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 0, image:"51"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 0, image:"52"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 0, image:"53"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 0, image:"54"))
        uploadList.append(PostClass(uploaderName: "Firdenon", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 0, image:"55"))
        uploadList.append(PostClass(uploaderName: "Nyunyud", imageTitle: "Zero", imageDescription: "A Swordman with Blade", tags: ["Swordman","Fantasy","RPG"], likeCount: 0, image:"56"))
        uploadList.append(PostClass(uploaderName: "Shiro00", imageTitle: "Foxy", imageDescription: "Personification of Fox being a Warrior", tags: ["Fox","Warrior","Sword"], likeCount: 0, image:"57"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Devilia", imageDescription: "a cute Devil ready to fight~", tags: ["Devil","Wings","Cute"], likeCount: 0, image:"58"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Chocolate 'Maid'", imageDescription: "Maid with Nekomimi Ready to serve you master!", tags: ["Maid","Cat Ears","Cute"], likeCount: 0, image:"59"))
        uploadList.append(PostClass(uploaderName: "Hideki", imageTitle: "グリムノーツ", imageDescription: "Appreantice Magician", tags: ["Magician","Cute","Card"], likeCount: 0, image:"60"))
        //61-70
        uploadList.append(PostClass(uploaderName: "Ghalax", imageTitle: "InsFire", imageDescription: "Warrior come straight from hell", tags: ["Dark","Sword","Hell"], likeCount: 0, image:"61"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Dark Creature", imageDescription: "My version of Creature from Darkness", tags: ["Dark","Creature","Scythe"], likeCount: 0, image:"62"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Phantom", imageDescription: "Dual-Wielder Fighter from Darkness", tags: ["Darkness","Dual Sword","Creepy"], likeCount: 0, image:"63"))
        uploadList.append(PostClass(uploaderName: "Tasikumase", imageTitle: "Wizard", imageDescription: "Wizard with Fighting Type", tags: ["Wizard","Staff","Scythe"], likeCount: 0, image:"64"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Mago Energetico", imageDescription: "Ice-Type Magician", tags: ["Magician","Ice","Staff"], likeCount: 0, image:"65"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Obraztof", imageDescription: "Magician that already reach high tier", tags: ["Magician","Cool","Hand"], likeCount: 0, image:"66"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "이승희(Seung Hee Lee)", imageDescription: "Original Character inspired from Dark Knight", tags: ["Knight","Gloom","Shadow"], likeCount: 0, image:"67"))
        uploadList.append(PostClass(uploaderName: "C0l", imageTitle: "Armadura :Colecionador de Ossos", imageDescription: "Warrior with many weapons", tags: ["Warrior","Sword","Spear"], likeCount: 0, image:"68"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Archangle", imageDescription: "Archangel ready to Battle", tags: ["Archangel","Wings","Sword"], likeCount: 0, image:"69"))
        uploadList.append(PostClass(uploaderName: "L0nT", imageTitle: "Izrail ", imageDescription: "Azrael es el Arcángel de la Muerte en varias tradiciones extrabíblicas. Está presente en el sijismo, en el islamismo, en el cristianismo e incluso en el judaísmo. Su nombre deriva de “Izrail”, nombre presente en el Corán y que se traduce como “Quien a Dios ayuda”.", tags: ["Devil","Scythe","Dark"], likeCount: 130, image:"70"))
        //71-80
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 0, image:"71"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 0, image:"72"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 0, image:"73"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 0, image:"74"))
        uploadList.append(PostClass(uploaderName: "Firdenon", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 0, image:"75"))
        uploadList.append(PostClass(uploaderName: "Nyunyud", imageTitle: "Zero", imageDescription: "A Swordman with Blade", tags: ["Swordman","Fantasy","RPG"], likeCount: 0, image:"76"))
        uploadList.append(PostClass(uploaderName: "Shiro00", imageTitle: "Foxy", imageDescription: "Personification of Fox being a Warrior", tags: ["Fox","Warrior","Sword"], likeCount: 0, image:"77"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Devilia", imageDescription: "a cute Devil ready to fight~", tags: ["Devil","Wings","Cute"], likeCount: 0, image:"78"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Chocolate 'Maid'", imageDescription: "Maid with Nekomimi Ready to serve you master!", tags: ["Maid","Cat Ears","Cute"], likeCount: 0, image:"79"))
        uploadList.append(PostClass(uploaderName: "Hideki", imageTitle: "グリムノーツ", imageDescription: "Appreantice Magician", tags: ["Magician","Cute","Card"], likeCount: 0, image:"80"))
        //81-90
        uploadList.append(PostClass(uploaderName: "Ghalax", imageTitle: "InsFire", imageDescription: "Warrior come straight from hell", tags: ["Dark","Sword","Hell"], likeCount: 0, image:"81"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Dark Creature", imageDescription: "My version of Creature from Darkness", tags: ["Dark","Creature","Scythe"], likeCount: 0, image:"82"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Phantom", imageDescription: "Dual-Wielder Fighter from Darkness", tags: ["Darkness","Dual Sword","Creepy"], likeCount: 0, image:"83"))
        uploadList.append(PostClass(uploaderName: "Tasikumase", imageTitle: "Wizard", imageDescription: "Wizard with Fighting Type", tags: ["Wizard","Staff","Scythe"], likeCount: 0, image:"84"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Mago Energetico", imageDescription: "Ice-Type Magician", tags: ["Magician","Ice","Staff"], likeCount: 0, image:"85"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Obraztof", imageDescription: "Magician that already reach high tier", tags: ["Magician","Cool","Hand"], likeCount: 0, image:"86"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "이승희(Seung Hee Lee)", imageDescription: "Original Character inspired from Dark Knight", tags: ["Knight","Gloom","Shadow"], likeCount: 0, image:"87"))
        uploadList.append(PostClass(uploaderName: "C0l", imageTitle: "Armadura :Colecionador de Ossos", imageDescription: "Warrior with many weapons", tags: ["Warrior","Sword","Spear"], likeCount: 0, image:"88"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Archangle", imageDescription: "Archangel ready to Battle", tags: ["Archangel","Wings","Sword"], likeCount: 0, image:"89"))
        uploadList.append(PostClass(uploaderName: "L0nT", imageTitle: "Izrail ", imageDescription: "Azrael es el Arcángel de la Muerte en varias tradiciones extrabíblicas. Está presente en el sijismo, en el islamismo, en el cristianismo e incluso en el judaísmo. Su nombre deriva de “Izrail”, nombre presente en el Corán y que se traduce como “Quien a Dios ayuda”.", tags: ["Devil","Scythe","Dark"], likeCount: 0, image:"90"))
        //91-100
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 0, image:"91"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 0, image:"92"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 0, image:"93"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 0, image:"94"))
        uploadList.append(PostClass(uploaderName: "Firdenon", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 0, image:"95"))
        uploadList.append(PostClass(uploaderName: "Nyunyud", imageTitle: "Zero", imageDescription: "A Swordman with Blade", tags: ["Swordman","Fantasy","RPG"], likeCount: 0, image:"96"))
        uploadList.append(PostClass(uploaderName: "Shiro00", imageTitle: "Foxy", imageDescription: "Personification of Fox being a Warrior", tags: ["Fox","Warrior","Sword"], likeCount: 0, image:"97"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Devilia", imageDescription: "a cute Devil ready to fight~", tags: ["Devil","Wings","Cute"], likeCount: 0, image:"98"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Chocolate 'Maid'", imageDescription: "Maid with Nekomimi Ready to serve you master!", tags: ["Maid","Cat Ears","Cute"], likeCount: 0, image:"99"))
        uploadList.append(PostClass(uploaderName: "Hideki", imageTitle: "グリムノーツ", imageDescription: "Appreantice Magician", tags: ["Magician","Cute","Card"], likeCount: 0, image:"100"))
        
        //MARK : Subscription List
        //1-5
        subsList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        subsList.append(PostClass(uploaderName: "Eric Bictor", imageTitle: "Kucing Apel", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub2"))
        subsList.append(PostClass(uploaderName: "Eric Biji", imageTitle: "Kucing Mangga", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub3"))
        subsList.append(PostClass(uploaderName: "Eric", imageTitle: "Kucing Makan Sushi", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub4"))
        subsList.append(PostClass(uploaderName: "Eric-Kun", imageTitle: "Kucing Naga", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub5"))
        
        //MARK : Top Upload List
        //1-5
        topUploadList.append(PostClass(uploaderName: "Eric", imageTitle: "Bare Bear 1", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image1"))
        topUploadList.append(PostClass(uploaderName: "Julius", imageTitle: "Bare Bear 2", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image2"))
        topUploadList.append(PostClass(uploaderName: "Kristopher", imageTitle: "Bare Bear 3", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image3"))
        topUploadList.append(PostClass(uploaderName: "Ricky", imageTitle: "Bare Bear 4", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image4"))
        topUploadList.append(PostClass(uploaderName: "Yudha", imageTitle: "Bare Bear 5", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 150, image:"image5"))
        
        //MARK : Profile
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoy", tags: ["anjay","kucing"], likeCount: 100, image: "image5"))
        profileList.append(PostClass(uploaderName: "John Doe", imageTitle: "kucing profil", imageDescription: "anjay men kucing ashoyanjay men kucing ashoyanjay men kucing ashoyanjay men kucing ashoyanjay men kucing ashoyanjay men", tags: ["anjay","kucing","beruang","ashoy","layangan","ps4","lembah","gunung"], likeCount: 100, image: "image5"))
        
        //MARK : Saved
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
        savedList.append(PostClass(uploaderName: "Eric Victor", imageTitle: "Kucing Pisang", imageDescription: "Kucing ga suka pisang mukanya enyoi", tags: ["Kucing","Pisang","Meme"], likeCount: 100, image:"sub1"))
    }
}
