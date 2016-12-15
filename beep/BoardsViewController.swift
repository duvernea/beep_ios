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


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let board = boardsStore.allBoards[indexPath.row]
        cell.textLabel?.text = board.name
        cell.imageView?.image = #imageLiteral(resourceName: "gorilla")
        return cell
    }
    

}
