//
//  BoardStore.swift
//  beep
//
//  Created by BRIAN DUVERNEAY on 12/13/16.
//  Copyright © 2016 Peast. All rights reserved.
//

import UIKit

class BoardStore {
    var allBoards = [Board]()
    
    var boardStrings = ["Friends", "Sweetie", "Mom and Dad"]
    
    @discardableResult func createBoards() -> Bool {
        
        for string in boardStrings {
            let board = Board(name: string, image: nil)
            allBoards.append(board)
        }
        return true
    }
    
    init() {
        createBoards()
    }
}
