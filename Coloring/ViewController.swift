//
//  ViewController.swift
//  Coloring
//
//  Created by Vova on 16.10.2020.
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
        viewColour.backgroundColor = .red
        viewColour.backgroundColor = viewColour.backgroundColor?.withAlphaComponent(CGFloat(sliderRed.value))
    }
    
   private func mixColors() {
        let red = CGFloat(sliderRed.value)
        let green = CGFloat(sliderGreen.value)
        let blue = CGFloat(sliderBlue.value)
        
        let colorView = UIColor(red: red, green: green, blue: blue, alpha: 1)
        viewColour.backgroundColor = colorView
    }

    @IBAction func sliderRedDragged() {
        let value = CGFloat(sliderRed.value)
        viewColour.backgroundColor = .red
        viewColour.backgroundColor = viewColour.backgroundColor?.withAlphaComponent(value)
        currentValueRed.text = String(format: "%.2f", sliderRed.value)
        mixColors()
    }
    
    @IBAction func sliderGreenDragged() {
        let value = CGFloat(sliderGreen.value)
        viewColour.backgroundColor = .green
        viewColour.backgroundColor = viewColour.backgroundColor?.withAlphaComponent(value)
        currentValueGreen.text = String(format: "%.2f", sliderGreen.value)
        mixColors()
    }
    @IBAction func sliderBlueDragged() {
        let value = CGFloat(sliderBlue.value)
        viewColour.backgroundColor = .blue
        viewColour.backgroundColor = viewColour.backgroundColor?.withAlphaComponent(value)
        currentValueBlue.text = String(format: "%.2f", sliderBlue.value)
        mixColors()
    }
}

