//
//  ViewController.swift
//  ColorMaker
//
//  Created by David Gibbs on 15/08/2016.
//  Copyright © 2016 SixtySticks. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var rgbValueLabel: UILabel!
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        rgbValueLabel.backgroundColor = UIColor(white: 1, alpha: 0.3)
        rgbValueLabel.layer.cornerRadius = 20.0
        rgbValueLabel.clipsToBounds = true
    }
    
    // MARK: Actions
    @IBAction func moveSlider(sender: UISlider) {
        updateColorView(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value))
    }
    
    func updateColorView(red r: CGFloat, green g: CGFloat, blue b: CGFloat) {
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        rgbValueLabel.text = "RGB: \(Int(r * 255)) / \(Int(g * 255)) / \(Int(b * 255))"
    }
}

