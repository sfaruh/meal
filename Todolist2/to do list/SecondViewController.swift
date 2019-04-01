//
//  SecondViewController.swift
//  to do list
//
//  Created by MacBook Pro on 29/03/19.
//  Copyright © 2019 Islam & Co. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var subtaskValue: UITextField!
    @IBOutlet weak var taskValue: UITextField!
    @IBAction func addTask(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
            let subtaskObject = UserDefaults.standard.object(forKey: "subtask")
        var items:[String]
        var subtask:[String]
        
        if let tempItem = itemsObject as? [String] {
            
            items = tempItem
            
            items.append(taskValue.text!)
        } else{
            
            items = [taskValue.text!]
            
        }
        
        UserDefaults.standard.set(subtask, forKey: "subtask")
        UserDefaults.standard.set(items, forKey: "items")
        
        taskValue.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

