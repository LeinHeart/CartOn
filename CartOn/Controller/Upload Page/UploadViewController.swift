//
//  UploadViewController.swift
//  CartOn
//
//  Created by Eric Victor on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class UploadViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    var opened: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(cancelBtn))
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(cancelBtn))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if(self.opened == false){
            self.opened = true
            
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.allowsEditing = true
                imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
                self.present(imagePicker, animated: true, completion: nil)
            }
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        //imageView.image = selectedImage
        dismiss(animated: true, completion: nil)
        self.navigationController?.pushViewController(CaptionViewController(), animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
        self.tabBarController?.selectedIndex = 0
        self.opened = false
    }
    
    @objc func cancelBtn(){
        self.opened = false
        tabBarController?.selectedIndex = 0
    }
    
}
