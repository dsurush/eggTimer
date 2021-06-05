//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var mainLabel: UILabel!
    let dict = ["Soft" : 3, "Medium" : 5, "Hard" : 7]
    var timer = Timer()
    var secondsRemaining = 60
    var secondsRemaining100 = 60
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let a = sender.currentTitle!
        self.mainLabel.text = "Start proccess of cooking. . ."
        secondsRemaining = dict[a]!
        secondsRemaining100 = secondsRemaining
        timer.invalidate()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerCook), userInfo: nil, repeats: true)
        
        
    }
   @objc func timerCook() {
        if secondsRemaining > 0 {
            print ("\(secondsRemaining) seconds")
            secondsRemaining -= 1
            let percentProgress = Float(secondsRemaining) / Float(secondsRemaining100)
            print(percentProgress)
            print(secondsRemaining100)
            progressBar.progress = 1.0 - Float(percentProgress)
        } else {
            timer.invalidate()
            self.mainLabel.text = "done"
            }
        }
}
