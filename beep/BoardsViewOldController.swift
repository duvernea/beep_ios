//
//  BoardsViewController.swift
//  beep
//
//  Created by BRIAN DUVERNEAY on 12/13/16.
//  Copyright © 2016 Peast. All rights reserved.
//

import UIKit

class BoardsViewOldController: UITableViewController {
    
    var boardsStore: BoardStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the height of the status bar
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        
        
    }
    
    
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
