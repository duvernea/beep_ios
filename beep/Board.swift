//
//  Board.swift
//  beep
//
//  Created by BRIAN DUVERNEAY on 12/13/16.
//  Copyright © 2016 Peast. All rights reserved.
//

import UIKit

class Board : NSObject {
    var name: String
    var image: String?
    
    init(name: String, image: String?) {
        self.name = name
        self.image = image
        
        super.init()
    }
}
