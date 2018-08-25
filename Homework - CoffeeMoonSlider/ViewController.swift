//
//  ViewController.swift
//  Homework - CoffeeMoonSlider
//
//  Created by Pei Wu on 2018/8/23.
//  Copyright © 2018年 Pei Wu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var distanceSlider: UISlider!
    @IBOutlet weak var portLabel: UILabel!
    @IBOutlet weak var starboardLabel: UILabel!
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var portAst: UIImageView!
    @IBOutlet weak var starboardAst: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeSlider(_ sender: UISlider) {
        portAst.frame.origin.x = CGFloat(20+125*sender.value)
        starboardAst.frame.origin.x = CGFloat(462-125*sender.value)
        
        distanceLabel.text = "Distance " + String(format:"%.f", 100-(distanceSlider.value*100)) + " miles"
        
        var speechUtteranceP = AVSpeechUtterance()
        let synthesizerP = AVSpeechSynthesizer()
        var speechUtteranceS = AVSpeechUtterance()
        let synthesizerS = AVSpeechSynthesizer()
        
        if sender.value <= 0.05{
            portLabel.text = "Hi there!"
            starboardLabel.text = ""
            speechUtteranceP = AVSpeechUtterance(string: "Hi there")
            speechUtteranceP.pitchMultiplier = 2
            synthesizerP.speak(speechUtteranceP)
            
        
        } else if sender.value < 0.25 {
            starboardLabel.text = "Hi How are you ?"
            portLabel.text = ""
            speechUtteranceS = AVSpeechUtterance(string: "Hi How are you")
            speechUtteranceS.pitchMultiplier = 0.5
            synthesizerS.speak(speechUtteranceS)
            
        } else if sender.value < 0.4 {
            portLabel.text = "Nice. Just bought a cup of Latte."
            starboardLabel.text = ""
            speechUtteranceP = AVSpeechUtterance(string: "Nice. Just bought a cup of Latte.")
            speechUtteranceP.pitchMultiplier = 2
            synthesizerP.speak(speechUtteranceP)
            
        } else if sender.value < 0.6 {
            starboardLabel.text = "From Coffee Moon ? Yes, better than Mars."
            portLabel.text = ""
            speechUtteranceS = AVSpeechUtterance(string: "From Coffee Moon ? Yes, better than Mars.")
            speechUtteranceS.pitchMultiplier = 0.5
            synthesizerS.speak(speechUtteranceS)
            
        } else if sender.value < 0.7 {
            portLabel.text = "HaHa"
            starboardLabel.text = "HaHa"
            speechUtteranceP = AVSpeechUtterance(string: "HaHa")
            speechUtteranceP.pitchMultiplier = 2
            synthesizerP.speak(speechUtteranceP)
            speechUtteranceS = AVSpeechUtterance(string: "HaHa")
            speechUtteranceS.pitchMultiplier = 0.5
            synthesizerS.speak(speechUtteranceS)
        
        } else if sender.value < 0.9 {
            starboardLabel.text = "We should hurry up. Space ship is coming."
            portLabel.text = ""
            speechUtteranceS = AVSpeechUtterance(string: "We should hurry up. Space ship is coming.")
            speechUtteranceS.pitchMultiplier = 0.5
            synthesizerS.speak(speechUtteranceS)
        
        } else {
            starboardLabel.text = "Cheers!"
            portLabel.text = "Cheers!"
            speechUtteranceP = AVSpeechUtterance(string: "Cheers")
            speechUtteranceP.pitchMultiplier = 2
            synthesizerP.speak(speechUtteranceP)
            speechUtteranceS = AVSpeechUtterance(string: "Cheers")
            speechUtteranceS.pitchMultiplier = 0.5
            synthesizerS.speak(speechUtteranceS)
        }
        
        if sender.value == 1.0 {
            centerLabel.text = "♥️"
        } else {
            centerLabel.text = ""
        }
        
    
    }
    
}

