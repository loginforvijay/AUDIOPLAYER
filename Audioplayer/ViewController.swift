//
//  ViewController.swift
//  Audioplayer
//
//  Created by Admin on 12/06/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
    
{
    
    
    var audioplayer = AVAudioPlayer()
    
    
    
    @IBAction func stop(_ sender: Any)
    {
     audioplayer.stop()
    }
    @IBAction func play(_ sender: Any)
    {
        audioplayer.play()
    }
    @IBAction func restart(_ sender: Any)
    {
        audioplayer.currentTime = 0
        audioplayer.play()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        do{
            
            let audiopath = Bundle.main.path(forResource: "vandemataram", ofType: "mp3")
            
            try audioplayer  = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!)as URL)
            
        
        }
        catch{
        
            print(error)
            
        }
        
        
        
        
    }

  

}

