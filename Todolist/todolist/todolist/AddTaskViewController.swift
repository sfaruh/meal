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
    var taskname: String = ""
    var subtaskname: String = ""
    @IBOutlet weak var TaskTextField: UITextField!
    
    @IBOutlet weak var SubTaskTextField: UITextField!
    
    @IBAction func AddTaskButton(_ sender: Any) {
        taskname = TaskTextField.text!
        subtaskname = SubTaskTextField.text!
        
    }
}
