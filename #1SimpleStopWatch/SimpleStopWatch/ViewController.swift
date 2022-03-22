//
//  ViewController.swift
//  SimpleStopWatch
//
//  Created by Talha Varol on 07.03.2022.
//

import UIKit

class ViewController: UIViewController {

    
    var time = Timer()
    var counter = 0.0
    @IBOutlet weak var timeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String( counter)
        
    }

    @IBAction func playButton(_ sender: Any) {
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeRun), userInfo: nil, repeats: true)
   
        
    }
    @IBAction func pauseButton(_ sender: Any) {
        time.invalidate()
    }
    @IBAction func resetButton(_ sender: Any) {
        time.invalidate()
        counter = 0.0
        timeLabel.text = String(counter)
    }
    @objc func timeRun(){
        
        counter += 0.1
        timeLabel.text = String(format: "%.1f", counter)
        
        
    }
    
}

