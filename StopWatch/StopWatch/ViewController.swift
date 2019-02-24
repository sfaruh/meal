//
//  ViewController.swift
//  StopWatch
//
//  Created by Farukh Sharipov on 19/02/2019.
//  Copyright © 2019 Farukh Sharipov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    @IBAction func startTimer(_ sender: AnyObject) {
        if(isPlaying) {
            return
        }
        startButton.isEnabled = false
        pauseButton.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    @IBAction func pauseTimer(_ sender: AnyObject) {
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
    }
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
        counter = 0.0
        timeLabel.text = String(counter)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = String(counter)
        pauseButton.isEnabled = false
    }
    
    @objc func UpdateTimer() {
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
