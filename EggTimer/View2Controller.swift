//
//  View2Controller.swift
//  EggTimer
//
//  Created by Davlatzoda Surush on 03/06/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {
    var secondsRemaining = 30

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func startTimer(_ sender: Any) {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                if self.secondsRemaining > 0 {
                    print ("\(self.secondsRemaining) seconds")
                    self.secondsRemaining -= 1
                } else { 
                    Timer.invalidate()
                }
            }
    }
    
}
