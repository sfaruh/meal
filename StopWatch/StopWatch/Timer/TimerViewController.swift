//
//  TimerViewController.swift
//  StopWatch
//
//  Created by ITLabAdmin on 2/27/19.
//  Copyright © 2019 Farukh Sharipov. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
   
    @IBOutlet weak var labelTimer: UILabel!
    @IBOutlet weak var sliderTimer: UISlider!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var counter = 30
    var timer = Timer()
    var isPlaying = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelTimer.text = String(counter)
        pauseButton.isEnabled = false
    }

    @IBAction func startTimer(_ sender: Any) {
        if(isPlaying) {
            return
        }
        startButton.isEnabled = false
        pauseButton.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    @objc func UpdateTimer() {
        counter = counter - 1
        labelTimer.text = String( counter)
    }
    
    @IBAction func pauseTimer(_ sender: Any) {
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
        
    }
    @IBAction func resetButton(_ sender: Any) {
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
        counter = 30
        labelTimer.text = String(counter)
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        counter = currentValue
        labelTimer.text = "\(currentValue)"
    }
    
    
}
