//
//  ViewController.swift
//  MusicNCS
//
//  Created by Iwin Yeung on 12/27/19.
//  Copyright © 2019 Iwin Yeung. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var PlayBTN: UIButton!
    @IBOutlet weak var PauseBTN: UIButton!
    @IBOutlet weak var PlayBTN2: UIButton!
    @IBOutlet weak var PauseBTN2: UIButton!
    @IBOutlet weak var PlayBTN3: UIButton!
    
    @IBOutlet weak var PauseBTN3: UIButton!
    @IBOutlet weak var PlayBTN4: UIButton!
    
    @IBOutlet weak var PauseBTN4: UIButton!
    
    @IBOutlet weak var PlayBTN5: UIButton!
    
    @IBOutlet weak var PauseBTN5: UIButton!
    
    var audioPlayer = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()
    var audioPlayer3 = AVAudioPlayer()
    var audioPlayer4 = AVAudioPlayer()
    var audioPlayer5 = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sound = Bundle.main.path(forResource:"song", ofType: "mp3")
        
            do{
            audioPlayer = try AVAudioPlayer(contentsOf:URL(fileURLWithPath: sound!))
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback,mode:AVAudioSession.Mode.default,options:[AVAudioSession.CategoryOptions.mixWithOthers])
            } catch {
            print (error)
            
            
            
        }
        let sound2 = Bundle.main.path(forResource:"memories", ofType: "mp3")
        
            do{
            audioPlayer2 = try AVAudioPlayer(contentsOf:URL(fileURLWithPath: sound2!))
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback,mode:AVAudioSession.Mode.default,options:[AVAudioSession.CategoryOptions.mixWithOthers])
            } catch {
            print (error)
            
            
            
        }
        let sound3 = Bundle.main.path(forResource:"heart", ofType: "mp3")
        
            do{
            audioPlayer3 = try AVAudioPlayer(contentsOf:URL(fileURLWithPath: sound3!))
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback,mode:AVAudioSession.Mode.default,options:[AVAudioSession.CategoryOptions.mixWithOthers])
            } catch {
            print (error)
   
        }
    
    let sound4 = Bundle.main.path(forResource:"bandit", ofType: "mp3")
    
        do{
        audioPlayer4 = try AVAudioPlayer(contentsOf:URL(fileURLWithPath: sound4!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback,mode:AVAudioSession.Mode.default,options:[AVAudioSession.CategoryOptions.mixWithOthers])
        } catch {
        print (error)
        
        
        
    }
    let sound5 = Bundle.main.path(forResource:"perfect", ofType: "mp3")
    
        do{
        audioPlayer5 = try AVAudioPlayer(contentsOf:URL(fileURLWithPath: sound5!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback,mode:AVAudioSession.Mode.default,options:[AVAudioSession.CategoryOptions.mixWithOthers])
        } catch {
        print (error)
        
        
        
    }
    
               
           }
    @IBAction func PlayBTN(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func PauseBTN(_ sender: Any) {
        audioPlayer.pause()
    }

    @IBAction func PlayBTN2(_ sender: Any) {
        audioPlayer2.play()
    }
    
    @IBAction func PauseBTN2(_ sender: Any) {
        audioPlayer2.pause()
    }
    
  
    @IBAction func PlayBTN3(_ sender: Any) {
        audioPlayer3.play()
    }
    
    @IBAction func PauseBTN3(_ sender: Any) {
        audioPlayer3.pause()
    }
    

   
    @IBAction func PlayBTN4(_ sender: Any) {
        audioPlayer4.play()
    }
    
    
    @IBAction func PauseBTN4(_ sender: Any) {
        audioPlayer4.pause()
    }
    
    @IBAction func PlayBTN5(_ sender: Any) {
        audioPlayer5.play()
    }
    
    
    @IBAction func PauseBTN5(_ sender: Any) {
        audioPlayer5.pause()
    }
}

