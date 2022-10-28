//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jay Bhensdadia on 28/10/22.
//

import UIKit

class ViewController: UIViewController {
    
  

    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Progress: UIProgressView!
    
    
    let eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
    var secondsRemaining = 60
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        Progress.progress = 1.0
        
        let hardness = sender.currentTitle!
    
        let result = eggTimes[hardness]!
        secondsRemaining = result
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        if secondsRemaining > 0{
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        }else if secondsRemaining == 0{
            timer.invalidate()
            Label.text = "Done!"
        }
    }
    

}

