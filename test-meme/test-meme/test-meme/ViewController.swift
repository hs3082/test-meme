//
//  ViewController.swift
//  test-meme
//
//  Created by Howard Snyder on 7/4/20.
//  Copyright © 2020 Howard Snyder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imagePickerView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pickAnimage(_ sender: Any) {
        print("Album button pressed")
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    @IBAction func pickImageFromCamera(_ sender: Any) {
        print("Camera button pressed")
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("pic selected")
        if let image = info[UIImagePickerController.InfoKey.originalImage] as?
        UIImage {
            imagePickerView.image = image
        
        picker.dismiss(animated: true, completion: nil)
    }
        
    }
}


