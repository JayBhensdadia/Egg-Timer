//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jay Bhensdadia on 28/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
  

    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Progress: UIProgressView!
    
    
    let eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
   
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    
    var player :  AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        Progress.progress = 0.0
  
        let hardness = sender.currentTitle!
    
        let result = eggTimes[hardness]!
        totalTime = result
        
        Label.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        if secondsPassed < totalTime{
            secondsPassed += 1
            Progress.progress = Float(secondsPassed)/Float(totalTime)
            
        }else if secondsPassed == totalTime{
            timer.invalidate()
            Label.text = "Done!"
            playAudio()
        }
    }
    
    func playAudio(){
        
        if let asset = NSDataAsset(name: "Sound"){
            player = try! AVAudioPlayer(data:asset.data, fileTypeHint:"mp3")
            
            player.play()
        }
        
    }
    

}

