//
//  ViewController.swift
//  tapper
//
//  Created by saurabh kumar on 1/24/16.
//  Copyright © 2016 saurabh kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var tapText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapLabel: UILabel!
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPlayButtonPressed (sender: UIButton!) {
        if tapText.text != nil && tapText.text != "" {
            reset(true)
            maxTaps = Int(tapText.text!)!
            tapLabel.text = "0 Taps"
        }
    }
    
    @IBAction func onTapCoin (sender: UIButton!) {
        currentTaps++;
        if (currentTaps == maxTaps)
        {
            reset(false)
        }
        tapLabel.text = "\(currentTaps) Taps"
    }
    
    func reset (flag: Bool) {
        logoImg.hidden = flag
        tapText.hidden = flag
        playButton.hidden = flag
        
        tapButton.hidden = !flag
        tapLabel.hidden = !flag
        currentTaps = 0
    }

}

