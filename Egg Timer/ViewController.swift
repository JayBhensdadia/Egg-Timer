//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jay Bhensdadia on 28/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let eggTimes = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
    
        let result = eggTimes[hardness]!
        print(result)
        
    }
    

}

