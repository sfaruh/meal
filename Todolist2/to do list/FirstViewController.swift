//
//  FirstViewController.swift
//  to do list
//
//  Created by MacBook Pro on 29/03/19.
//  Copyright © 2019 Islam & Co. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var table: UITableView!

    var items: [String] = []
    
    //table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellContent = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")

        cellContent.textLabel?.text = items[indexPath.row]
        return cellContent
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//
//        self.table.delegate = self
//        self.table.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool){
        
        let itemsObject = UserDefaults.standard.stringArray(forKey: "items")
        
        if let tempItems = itemsObject{
            
            items = tempItems
            
        }
        self.table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
            items.remove(at: indexPath.row)
            
            self.table.reloadData()
            
            UserDefaults.standard.set(items, forKey: "items")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

