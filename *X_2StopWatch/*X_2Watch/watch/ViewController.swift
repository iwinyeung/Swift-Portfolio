//
//  ViewController.swift
//  watch
//
//  Created by Iwin Yeung on 12/26/19.
//  Copyright © 2019 Iwin Yeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTime: UILabel!
    var time = 0.0
    
    //timer
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnStart(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnPause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func btnReset(_ sender: Any) {
        timer.invalidate()
        time = 0.0
        lblTime.text = "0"
    }
    
    @objc func action() {
        time += 1.0
        lblTime.text = String(time)
    }
    
}
