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
        //return boardsStore.allBoards.count
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("test")
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        cell.textLabel?.text = "Hi tester"
        return cell
    }
 
    
}
