//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jay Bhensdadia on 28/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        
        if hardness == "Soft"{
            print(softTime)
        }else if hardness == "Medium"{
            print(mediumTime)
        }else{
            print(hardTime)
        }
    }
    

}

