//
//  ViewController.swift
//  beep
//
//  Created by BRIAN DUVERNEAY on 12/12/16.
//  Copyright © 2016 Peast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myLabel: UILabel!
    
    @IBAction func startButtonPress(_ sender: UIButton) {
        myLabel.text = "Started.."
    
    }
    @IBAction func stopButtonPress(_ sender: UIButton) {
        myLabel.text = "Stopped.."
    }
    @IBAction func replayButtonPress(_ sender: UIButton) {
        myLabel.text = "Replay"
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

