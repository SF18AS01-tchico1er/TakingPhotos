//
//  ViewController.swift
//  TakingPhotos
//
//  Created by TIEGO Ouedraogo on 1/25/19.
//  Copyright © 2019 TIEGO Ouedraogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @IBOutlet weak var camera: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        
        let cam = UIImagePickerController()
        cam.delegate = self
        cam.sourceType = UIImagePickerController.SourceType.camera
        cam.allowsEditing = true;
        self.present(cam, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let images = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            camera.image = images
        }else{
            resignFirstResponder()
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}



