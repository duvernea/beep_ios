//
//  Board.swift
//  beep
//
//  Created by BRIAN DUVERNEAY on 12/13/16.
//  Copyright © 2016 Peast. All rights reserved.
//

import UIKit

class Board : NSObject, NSCoding {
    var name: String
    var image: String?
    
    let boardKey: String
    
    init(name: String, image: String?) {
        self.name = name
        self.image = image
        self.boardKey = UUID().uuidString
        
        super.init()
    }
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
        boardKey = aDecoder.decodeObject(forKey: "boardKey") as! String
        
        super.init()
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(boardKey, forKey: "boardKey")
    }
}
