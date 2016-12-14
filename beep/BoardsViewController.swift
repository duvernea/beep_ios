//
//  BoardsViewController.swift
//  beep
//
//  Created by BRIAN DUVERNEAY on 12/13/16.
//  Copyright © 2016 Peast. All rights reserved.
//

import UIKit

class BoardsViewController: UITableViewController {
    
    var boardsStore: BoardStore!
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boardsStore.allBoards.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a new or recycled cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let board = boardsStore.allBoards[indexPath.row]
        cell.textLabel?.text = board.name
        cell.imageView?.image = #imageLiteral(resourceName: "gorilla")
        return cell
    }
 
    
}
