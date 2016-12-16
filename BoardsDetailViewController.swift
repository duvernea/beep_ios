//
//  BoardsDetailViewController.swift
//  beep
//
//  Created by BRIAN DUVERNEAY on 12/15/16.
//  Copyright © 2016 Peast. All rights reserved.
//

import UIKit

class BoardsDetailViewController: UIViewController,
        UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var boardImage: UIImageView!
    
    var board: Board!
    var imageStore: ImageStore!
    let appName = "beep"
    
    @IBAction func choosePicture(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
        } else {
            imagePicker.sourceType = .photoLibrary
        }
        imagePicker.delegate = self
        
        // Place image picker on the screen
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set navigation bar title to app name (for now at least)
        navigationItem.title = appName
        
        //textLabel.text = board.name
        textLabel.text = board.name
        
        let key = board.boardKey
        
        // If image, display it in image view
        let imageToDisplay = imageStore.image(forKey: key)
        
        //boardImage.image = #imageLiteral(resourceName: "Deer")
        boardImage.image = imageToDisplay
        //boardImage.contentMode = UIViewContentMode.left;
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // Get picked image from info dictionary
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Store the image in the ImageStore for the item's key
        imageStore.setImage(image, forKey: board.boardKey)
        
        // Put that image on the screen in the image view
        boardImage.image = image
        
        // Take image picker off the screen
        dismiss(animated: true, completion: nil)
    }
}
