//
//  ViewController.swift
//  ColorChanger
//
//  Created by torilin on 7/21/16.
//  Copyright © 2016 torilin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greyScaleSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBOutlet weak var greyLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greyAction(greyScaleSlider)
    }
    
    @IBAction func greyAction(sender: UISlider) {
        
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
        
        greyLabel.text = String(format: "%.2f", sender.value)
        
        if sender.value >= 0.50   {
            greyLabel.textColor = UIColor(white: 0, alpha: 1)
        } else {
            greyLabel.textColor = UIColor(white: 1, alpha: 1)
        }
        
    }
    
    
    @IBAction func RGBAction(sender: UISlider) {
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        if redSlider.value >= 0.50 && greenSlider.value >= 0.50 && blueSlider.value >= 0.5 {
            redLabel.textColor = UIColor(white: 0, alpha: 1)
            greenLabel.textColor = UIColor(white: 0, alpha: 1)
            blueLabel.textColor = UIColor(white: 0, alpha: 1)
        }   else {
            redLabel.textColor = UIColor(white: 1, alpha: 1)
            greenLabel.textColor = UIColor(white: 1, alpha: 1)
            blueLabel.textColor = UIColor(white: 1, alpha: 1)
        }
    }
    
    @IBAction func reset() {

        greyScaleSlider.value = 0.5
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        greyLabel.text = "0.5"
        redLabel.text = "0.5"
        greenLabel.text = "0.5"
        blueLabel.text = "0.5"
        
        view.backgroundColor = UIColor(white: 0.5, alpha: 1)
        
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        view.layer.addAnimation(transition, forKey: nil)
        
        
    }
    
    
}

