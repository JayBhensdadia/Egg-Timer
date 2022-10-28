//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jay Bhensdadia on 28/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let eggTimes = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    var secondsRemaining = 60
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
    
        let result = eggTimes[hardness]!
        secondsRemaining = result
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        if secondsRemaining > 0{
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        }
    }
    

}

