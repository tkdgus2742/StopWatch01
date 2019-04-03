//
//  ViewController.swift
//  StopWatch01
//
//  Created by D7703_11 on 2019. 4. 3..
//  Copyright © 2019년 D7703_11. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timelabel: UILabel!
    var count = 0
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    timelabel.text = String(count)
    print(myTimer.isValid)
    }
    
    @IBAction func startbtn(_ sender: Any) {
        
        if !myTimer.isValid{
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
            print("startbtn = \(myTimer.isValid)")
        }
        
    }
    @IBAction func pausebtn(_ sender: Any) {
     myTimer.invalidate()
    }
    
    @IBAction func stopbtn(_ sender: Any) {
        myTimer.invalidate()
        count = 0
        timelabel.text = String(count)
    }
    @objc func updateTime(){
        count+=1
        timelabel.text = String(count)
    }

}

