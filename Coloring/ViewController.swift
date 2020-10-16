//
//  ViewController.swift
//  Coloring
//
//  Created by Marina on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewColour: UIView!
    
    @IBOutlet var currentValueRed: UILabel!
    @IBOutlet var currentValueGreen: UILabel!
    @IBOutlet var currentValueBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //private var slider.
        
        //slider
        sliderRed.value = 0.05
        sliderBlue.value = 0.35
        sliderGreen.value = 0.65
        
        //Value
        currentValueRed.text = String(sliderRed.value)
        currentValueGreen.text = String(sliderGreen.value)
        currentValueBlue.text = String(sliderBlue.value)
        
        //View
        viewColour.layer.cornerRadius = 10
        
        
        
    }

    @IBAction func sliderRedDragged() {
        viewColour.backgroundColor = .red
        currentValueRed.text = String(format: "%.2f", sliderRed.value)
    }
    
    @IBAction func sliderGreenDragged() {
        
    }
    @IBAction func sliderBlueDragged() {
    }
}

