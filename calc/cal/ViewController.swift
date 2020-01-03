//
//  ViewController.swift
//  cal
//
//  Created by Iwin Yeung on 1/3/20.
//  Copyright © 2020 Iwin Yeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var x:Double = 0;
    var y:Double = 0;
    var s:String = "";
    var p = false
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//    resultLabel.text = "80"

    }

    @IBAction func buttons(_ sender: UIButton) {
    if(p==true){
        resultLabel.text = String(sender.tag)
        x = Double(resultLabel.text!)!
        p=false
    }
    else{
        resultLabel.text = resultLabel.text!+String(sender.tag)
        x = Double(resultLabel.text!)!
    }
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        if(sender.tag != 10) && sender.tag != 17 && resultLabel.text != nil{
                y = Double(resultLabel.text!)!
                if sender.tag == 11 {
                    resultLabel.text = ""
                    s="+"
                }
                
                if sender.tag == 12 {
                    resultLabel.text = ""
                    s="-"
                }
                if sender.tag == 13 {
                    resultLabel.text = ""
                    s="*"
                }
                if sender.tag == 14 {
                    resultLabel.text = ""
                    s="/"
                }
                p=true
                
        }
            else if(sender.tag == 10){
                if(s == "+"){
                    resultLabel.text = String(x+y)
                    s=""
                }
                else if(s == "-"){
                    resultLabel.text = String(x-y)
                    s=""
                }
                else if(s == "*"){resultLabel.text = String(x*y)
                    s=""}
                else if(s == "/"){resultLabel.text = String(x/y)
                    s=""}
            }
            else if(sender.tag == 17){
                resultLabel.text = resultLabel.text! + "."
            }
    }
    
    
    
    
    @IBAction func clear(_ sender: Any) {
            resultLabel.text = ""
            x = 0
            y = 0
            s=""
            p = false
        }
}


