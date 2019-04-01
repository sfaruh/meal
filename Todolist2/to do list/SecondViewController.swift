//
//  SecondViewController.swift
//  to do list
//
//  Created by MacBook Pro on 29/03/19.
//  Copyright © 2019 Islam & Co. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var taskValue: UITextField!
    @IBAction func addTask(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
            
        var items:[String]
        
        if let tempItem = itemsObject as? [String] {
            
            items = tempItem
            
            items.append(taskValue.text!)
        } else{
            
            items = [taskValue.text!]
            
        }
        
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


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

