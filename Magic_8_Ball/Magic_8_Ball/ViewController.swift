//
//  ViewController.swift
//  Magic_8_Ball
//
//  Created by Patrick Holmes on 5/8/19.
//  Copyright © 2019 Patrick Holmes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answersArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomAnswerIndex1: Int = 0
    var randomAnswerIndex2: Int = 0
    
    @IBOutlet weak var shakeView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateBallImage()
    }

    @IBAction func shakeButtonPress(_ sender: Any) {
        
        updateBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    func updateBallImage(){
        
        randomAnswerIndex1 = Int.random(in: 0 ... 4)
        
        shakeView.image = UIImage(named: answersArray[randomAnswerIndex1])
    }
    
}

