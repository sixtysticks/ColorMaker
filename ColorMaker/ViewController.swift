//
//  ViewController.swift
//  ColorMaker
//
//  Created by David Gibbs on 15/08/2016.
//  Copyright © 2016 SixtySticks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    // MARK: Actions
    @IBAction func moveSlider(sender: UISlider) {
        updateColorView(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value))
    }
    
    func updateColorView(red r: CGFloat, green g: CGFloat, blue b: CGFloat) {
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

