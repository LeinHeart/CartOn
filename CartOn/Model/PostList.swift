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
        
        //MARK : Upload List
        //1-10
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 0, image:"1"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 0, image:"2"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 0, image:"3"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 0, image:"4"))
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 0, image:"5"))
        uploadList.append(PostClass(uploaderName: "Nyunyud", imageTitle: "Zero", imageDescription: "A Swordman with Blade", tags: ["Swordman","Fantasy","RPG"], likeCount: 0, image:"6"))
        uploadList.append(PostClass(uploaderName: "Shiro00", imageTitle: "Foxy", imageDescription: "Personification of Fox being a Warrior", tags: ["Fox","Warrior","Sword"], likeCount: 0, image:"7"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Devilia", imageDescription: "a cute Devil ready to fight~", tags: ["Devil","Wings","Cute"], likeCount: 0, image:"8"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Chocolate 'Maid'", imageDescription: "Maid with Nekomimi Ready to serve you master!", tags: ["Maid","Cat Ears","Cute"], likeCount: 0, image:"9"))
        uploadList.append(PostClass(uploaderName: "Hideki", imageTitle: "グリムノーツ", imageDescription: "Appreantice Magician", tags: ["Magician","Cute","Card"], likeCount: 0, image:"10"))
        //11-20
        uploadList.append(PostClass(uploaderName: "Ghalax", imageTitle: "InsFire", imageDescription: "Warrior come straight from hell", tags: ["Dark","Sword","Hell"], likeCount: 0, image:"11"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Dark Creature", imageDescription: "My version of Creature from Darkness", tags: ["Dark","Creature","Scythe"], likeCount: 0, image:"12"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Phantom", imageDescription: "Dual-Wielder Fighter from Darkness", tags: ["Darkness","Dual Sword","Creepy"], likeCount: 0, image:"13"))
        uploadList.append(PostClass(uploaderName: "Tasikumase", imageTitle: "Wizard", imageDescription: "Wizard with Fighting Type", tags: ["Wizard","Staff","Scythe"], likeCount: 0, image:"14"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Mago Energetico", imageDescription: "Ice-Type Magician", tags: ["Magician","Ice","Staff"], likeCount: 0, image:"15"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Obraztof", imageDescription: "Magician that already reach high tier", tags: ["Magician","Cool","Hand"], likeCount: 0, image:"16"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "이승희(Seung Hee Lee)", imageDescription: "Original Character inspired from Dark Knight", tags: ["Knight","Gloom","Shadow"], likeCount: 0, image:"17"))
        uploadList.append(PostClass(uploaderName: "C0l", imageTitle: "Armadura :Colecionador de Ossos", imageDescription: "Warrior with many weapons", tags: ["Warrior","Sword","Spear"], likeCount: 0, image:"18"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Archangle", imageDescription: "Archangel ready to Battle", tags: ["Archangel","Wings","Sword"], likeCount: 0, image:"19"))
        uploadList.append(PostClass(uploaderName: "L0nT", imageTitle: "Izrail ", imageDescription: "Azrael es el Arcángel de la Muerte en varias tradiciones extrabíblicas. Está presente en el sijismo, en el islamismo, en el cristianismo e incluso en el judaísmo. Su nombre deriva de “Izrail”, nombre presente en el Corán y que se traduce como “Quien a Dios ayuda”.", tags: ["Devil","Scythe","Dark"], likeCount: 130, image:"20"))
        //21-30
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 0, image:"21"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 0, image:"22"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 0, image:"23"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 0, image:"24"))
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 0, image:"25"))
        uploadList.append(PostClass(uploaderName: "Nyunyud", imageTitle: "Zero", imageDescription: "A Swordman with Blade", tags: ["Swordman","Fantasy","RPG"], likeCount: 0, image:"26"))
        uploadList.append(PostClass(uploaderName: "Shiro00", imageTitle: "Foxy", imageDescription: "Personification of Fox being a Warrior", tags: ["Fox","Warrior","Sword"], likeCount: 0, image:"27"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Devilia", imageDescription: "a cute Devil ready to fight~", tags: ["Devil","Wings","Cute"], likeCount: 0, image:"28"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Chocolate 'Maid'", imageDescription: "Maid with Nekomimi Ready to serve you master!", tags: ["Maid","Cat Ears","Cute"], likeCount: 0, image:"29"))
        uploadList.append(PostClass(uploaderName: "Hideki", imageTitle: "グリムノーツ", imageDescription: "Appreantice Magician", tags: ["Magician","Cute","Card"], likeCount: 0, image:"30"))
        //31-40
        uploadList.append(PostClass(uploaderName: "Ghalax", imageTitle: "InsFire", imageDescription: "Warrior come straight from hell", tags: ["Dark","Sword","Hell"], likeCount: 0, image:"31"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Dark Creature", imageDescription: "My version of Creature from Darkness", tags: ["Dark","Creature","Scythe"], likeCount: 0, image:"32"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Phantom", imageDescription: "Dual-Wielder Fighter from Darkness", tags: ["Darkness","Dual Sword","Creepy"], likeCount: 0, image:"33"))
        uploadList.append(PostClass(uploaderName: "Tasikumase", imageTitle: "Wizard", imageDescription: "Wizard with Fighting Type", tags: ["Wizard","Staff","Scythe"], likeCount: 0, image:"34"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Mago Energetico", imageDescription: "Ice-Type Magician", tags: ["Magician","Ice","Staff"], likeCount: 0, image:"35"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Obraztof", imageDescription: "Magician that already reach high tier", tags: ["Magician","Cool","Hand"], likeCount: 0, image:"36"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "이승희(Seung Hee Lee)", imageDescription: "Original Character inspired from Dark Knight", tags: ["Knight","Gloom","Shadow"], likeCount: 0, image:"37"))
        uploadList.append(PostClass(uploaderName: "C0l", imageTitle: "Armadura :Colecionador de Ossos", imageDescription: "Warrior with many weapons", tags: ["Warrior","Sword","Spear"], likeCount: 0, image:"38"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Archangle", imageDescription: "Archangel ready to Battle", tags: ["Archangel","Wings","Sword"], likeCount: 0, image:"39"))
        uploadList.append(PostClass(uploaderName: "L0nT", imageTitle: "Izrail ", imageDescription: "Azrael es el Arcángel de la Muerte en varias tradiciones extrabíblicas. Está presente en el sijismo, en el islamismo, en el cristianismo e incluso en el judaísmo. Su nombre deriva de “Izrail”, nombre presente en el Corán y que se traduce como “Quien a Dios ayuda”.", tags: ["Devil","Scythe","Dark"], likeCount: 0, image:"40"))
        //41-50
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 0, image:"41"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 0, image:"42"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 0, image:"43"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 0, image:"44"))
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 0, image:"45"))
        uploadList.append(PostClass(uploaderName: "Nyunyud", imageTitle: "Zero", imageDescription: "A Swordman with Blade", tags: ["Swordman","Fantasy","RPG"], likeCount: 0, image:"46"))
        uploadList.append(PostClass(uploaderName: "Shiro00", imageTitle: "Foxy", imageDescription: "Personification of Fox being a Warrior", tags: ["Fox","Warrior","Sword"], likeCount: 0, image:"47"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Devilia", imageDescription: "a cute Devil ready to fight~", tags: ["Devil","Wings","Cute"], likeCount: 0, image:"48"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Chocolate 'Maid'", imageDescription: "Maid with Nekomimi Ready to serve you master!", tags: ["Maid","Cat Ears","Cute"], likeCount: 0, image:"49"))
        uploadList.append(PostClass(uploaderName: "Hideki", imageTitle: "グリムノーツ", imageDescription: "Appreantice Magician", tags: ["Magician","Cute","Card"], likeCount: 0, image:"50"))
        //51-60
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 0, image:"51"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 0, image:"52"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 0, image:"53"))
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 0, image:"54"))
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 0, image:"55"))
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
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 0, image:"71"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 0, image:"72"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 0, image:"73"))
        uploadList.append(PostClass(uploaderName: "John Doe", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 0, image:"74"))
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 0, image:"75"))
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
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Power Angel", imageDescription: "Recreating Angel with Mecha.", tags: ["Mecha","Gundam","Angel","Wings", "White"], likeCount: 0, image:"91"))
        uploadList.append(PostClass(uploaderName: "Bachtiar", imageTitle: "Sharp Plate", imageDescription: "Medivial Full Plate", tags: ["Armor","Dark","Medivial"], likeCount: 0, image:"92"))
        uploadList.append(PostClass(uploaderName: "Ph!l", imageTitle: "Million Chain 'Averu'", imageDescription: "I made Angel with Gundam Version.", tags: ["Gundam","Angel","Mecha"], likeCount: 0, image:"93"))
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Auroras", imageDescription: "Female Assassin Mecha", tags: ["Assassin","Mecha","Pink","Wings"], likeCount: 0, image:"94"))
        uploadList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "GxG Blade", imageDescription: "Combine Assassin and Samurai", tags: ["Samurai","Assassin","Mecha"], likeCount: 0, image:"95"))
        uploadList.append(PostClass(uploaderName: "Nyunyud", imageTitle: "Zero", imageDescription: "A Swordman with Blade", tags: ["Swordman","Fantasy","RPG"], likeCount: 0, image:"96"))
        uploadList.append(PostClass(uploaderName: "Shiro00", imageTitle: "Foxy", imageDescription: "Personification of Fox being a Warrior", tags: ["Fox","Warrior","Sword"], likeCount: 0, image:"97"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Devilia", imageDescription: "a cute Devil ready to fight~", tags: ["Devil","Wings","Cute"], likeCount: 0, image:"98"))
        uploadList.append(PostClass(uploaderName: "LeinHeart", imageTitle: "Chocolate 'Maid'", imageDescription: "Maid with Nekomimi Ready to serve you master!", tags: ["Maid","Cat Ears","Cute"], likeCount: 0, image:"99"))
        uploadList.append(PostClass(uploaderName: "Hideki", imageTitle: "グリムノーツ", imageDescription: "Appreantice Magician", tags: ["Magician","Cute","Card"], likeCount: 0, image:"100"))
        
        uploadList.append(PostClass(uploaderName: "Hazukirin", imageTitle: "Pikachu & Eevee", imageDescription: "Pikachu & Eevee with Costume", tags: ["Pokemon","Eevee","Pikachu"], likeCount: 0, image:"101"))
        
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
        profileList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "UMP9", imageDescription: "UMP9 from Girl's Frontline", tags: ["UMP9","Girl","Weapon"], likeCount: 0, image: "95"))
        profileList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Our Shadow", imageDescription: "Don't let our shadow the king of our mind", tags: ["shadow","dark"], likeCount: 0, image: "71"))
        profileList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Wellington", imageDescription: "Originally Personification of Gun", tags: ["Gun","Girl"], likeCount: 0, image: "94"))
        profileList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Type67", imageDescription: "Girl's Frontline Type67", tags: ["Girl's Frontline","Girl","Weapon","Gun"], likeCount: 0, image: "91"))
        profileList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Contamination", imageDescription: "Is this our future?", tags: ["Apocalypse","Gas","Mask","Uniform","Seifuku","Long Hair"], likeCount: 0, image: "45"))
        profileList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Tomoko-chan", imageDescription: "Tomoko-chan saying hi~", tags: ["Anime","Girl","Cute","Seifuku","Schoolgirl"], likeCount: 0, image: "25"))
        profileList.append(PostClass(uploaderName: "Lily-chan", imageTitle: "Wings of Assassin", imageDescription: "Recreating Assassin with Gundam", tags: ["Gundam","Mecha","Wings","Assassin","Purple","Blue","Dual Weapon"], likeCount: 0, image: "54"))
    }
}
