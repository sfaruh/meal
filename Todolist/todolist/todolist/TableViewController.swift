//
//  TableViewController.swift
//  todolist
//
//  Created by Farukh Sharipov on 02/03/2019.
//  Copyright © 2019 neobis. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var task: String = ""
    var subtask: String = ""
    private var tasks: [(String, String)] = []
    
    @IBOutlet var listTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTasks(task: task, subtask: subtask)
    }
    
    func addTasks(task: String, subtask: String) {
        tasks.append((task, subtask))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as! ListTableViewCell
        cell.taskLabel.text = tasks[indexPath.row].0
        cell.subtaskLabel.text = tasks[indexPath.row].1
        return cell
    }
    
}
