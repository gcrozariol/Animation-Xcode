//
//  ViewController.swift
//  Animations
//
//  Created by Guilherme Henrique Crozariol on 2016-12-19.
//  Copyright © 2016 Lion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    var timer = Timer()
    var counter = 1
    var isAnimating = false
    
    @IBAction func next(_ sender: Any) {
        
        if isAnimating {
            timer.invalidate()
            button.setTitle("Start Animation", for: [])
            isAnimating = false
        } else {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.animate),userInfo: nil, repeats: true)
            button.setTitle("Stop Animation", for: [])
            isAnimating = true
        }
        
    }
    
    func animate () {
        
        image.image = UIImage(named: "frame_\(counter)_delay-0.1s.gif")
        counter += 1
        
        if counter == 37 {
            counter = 0
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
