//
//  ViewController.swift
//  StopWatch
//
//  Created by Iwin Yeung on 12/26/19.
//  Copyright © 2019 Iwin Yeung. All rights reserved.
/*
 This is a replica of the timer app that demonstrates optimization of the storyboard and the Button functions.
 
 */

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var OurTimer = Timer()
    var TimerDisplayed = 0
    
    @IBOutlet weak var Label: UILabel!

    
    @IBAction func StartBTN(_ sender: Any) {
        OurTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
        }
    @IBAction func PauseBTN(_ sender: Any) {
        OurTimer.invalidate()
    }
    
    @IBAction func ResetBTN(_ sender: Any) {
        OurTimer.invalidate()
        TimerDisplayed = 0
        Label.text = "0"
        
    }
    
    @objc func Action(){
        TimerDisplayed += 1
        Label.text = String(TimerDisplayed)
    }
    
    override func viewDidLoad() {
 
    }
}
