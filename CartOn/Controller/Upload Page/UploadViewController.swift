//
//  UploadViewController.swift
//  CartOn
//
//  Created by Eric Victor on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

struct Chosen {
    static var isChosen: Bool = false
}

class UploadViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate, CaptionViewProtocol {

    var quit: Bool = false
    var vc = CaptionViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(cancelBtn))
    
        vc.vcDelegate = self
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
        if(self.quit == false){
            self.quit = true
            
            if (Chosen.isChosen == false){
                if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary){
                    let imagePicker = UIImagePickerController()
                    imagePicker.delegate = self
                    imagePicker.allowsEditing = true
                    imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
                    self.present(imagePicker, animated: true, completion: nil)
                }
            }
        }
        else {
            self.navigateHome()
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        //imageView.image = selectedImage
        self.quit = false
        Chosen.isChosen = true
        dismiss(animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
        self.navigateHome()
    }
    
    func navigateHome() {
        self.tabBarController?.selectedIndex = 0
        self.quit = false
    }
}
