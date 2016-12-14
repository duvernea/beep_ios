//
//  ViewController.swift
//  beep
//
//  Created by BRIAN DUVERNEAY on 12/12/16.
//  Copyright © 2016 Peast. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField1: UITextField!
    @IBOutlet var myTextField2: UITextField!
    
    var myBoard: Board?

    
    @IBAction func startButtonPress(_ sender: UIButton) {
        myLabel.text = "Started.."
        myBoard = Board(name: "Test Board Name", image: nil)
        print(myBoard?.image ?? "image is nil")
        
    }
    @IBAction func stopButtonPress(_ sender: UIButton) {
        myLabel.text = "Stopped.."
    }
    @IBAction func replayButtonPress(_ sender: UIButton) {
        myLabel.text = "Replay"
    }
    @IBAction func testTest() {
        print("test function")
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField === myTextField1 {
            print ("field 1")
        } else {
            print ("field 2")
        }
        print("Current text: \(textField.text)")
        print("Replacement text: \(string)")
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("Text Field Should Clear")
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.text = "TESTING"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

