//
//  TableViewController.swift
//  todolist
//
//  Created by Farukh Sharipov on 02/03/2019.
//  Copyright © 2019 neobis. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var task:String
    var subtask:String
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    let sb = UIViewController(name: "AddTaskViewController")
    let vc = sb.instantiateViewController(withIdentifier: "AddTaskViewController")
    TableViewController.task = taskname
    TableViewController.subtask = subtaskname
}
