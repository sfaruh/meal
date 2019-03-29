//
//  AddTaskViewController.swift
//  todolist
//
//  Created by Farukh Sharipov on 02/03/2019.
//  Copyright © 2019 neobis. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var TaskTextField: UITextField!

    
    @IBAction func AddTaskButton(_ sender: Any) {

        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        vc.tasks.append(TaskTextField.text!)
        
        
        //vc.task = myTask
        //vc.subtask = mySubtask
   //     vc.addTasks(task: myTask)
        
        // перейти на другой таб 
    }
}
