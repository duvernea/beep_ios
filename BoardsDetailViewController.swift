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
    
    
    var board: Board!
    
    var imageStore: ImageStore!
    
    let appName = "beep"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set navigation bar title to app name (for now at least)
        navigationItem.title = appName
        
        
        //textLabel.text = board.name
        textLabel.text = board.name
        boardImage.image = #imageLiteral(resourceName: "Deer")
        boardImage.contentMode = UIViewContentMode.left;
        
    }
}
