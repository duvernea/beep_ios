//
//  BoardsTempViewController.swift
//  beep
//
//  Created by BRIAN DUVERNEAY on 12/14/16.
//  Copyright © 2016 Peast. All rights reserved.
//

import UIKit

class BoardsViewController: UIViewController, UITableViewDataSource {
    
    var boardsStore: BoardStore!
    
    var imageStore: ImageStore!

    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //tableView.rowHeight = UITableViewAutomaticDimension
        //tableView.estimatedRowHeight = 100
        tableView.rowHeight = 150
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boardsStore.allBoards.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a new or recycled cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoardItemCell", for: indexPath) as! BoardItemCell
        
        let board = boardsStore.allBoards[indexPath.row]
        cell.boardNameLabel?.text = board.name
        //cell.boardImageView?.image = #imageLiteral(resourceName: "gorilla")
        let key = board.boardKey
        print("board key: \(key)")
        
        // If image, display it in image view
        let imageToDisplay = imageStore.image(forKey: key)
        print("image size: \(imageToDisplay?.size)")
        
        
        cell.boardImageView?.image = imageToDisplay
        
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#function)
        // If the triggered segue is the "showItem" segue
        switch segue.identifier {
        case "showItem"?:
            // Figure out which row was just tapped
            print("row selected: \(tableView.indexPathForSelectedRow?.row)")
            if let row = tableView.indexPathForSelectedRow?.row {
                // Get the item associated with this row and pass it along
                let board = boardsStore.allBoards[row]
                let boardsDetailViewController = segue.destination as! BoardsDetailViewController
                boardsDetailViewController.board = board
                boardsDetailViewController.imageStore = imageStore
            }
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }
}
