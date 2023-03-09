//
//  ViewController.swift
//  UISlider&UITextField
//
//  Created by TR on 2023/2/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorPreviewImageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sliders 只有放開才刷新
        redSlider.isContinuous = false
        greenSlider.isContinuous = false
        blueSlider.isContinuous = false
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        
        let redValue = CGFloat(redSlider.value) / 255.0
        let greenValue = CGFloat(greenSlider.value) / 255.0
        let blueValue = CGFloat(blueSlider.value) / 255.0
        
        colorPreviewImageView.backgroundColor = UIColor(
            red: redValue,
            green: greenValue,
            blue: blueValue,
            alpha: 1)
        
        redLabel.text = Int(redSlider.value).description
        greenLabel.text = Int(greenSlider.value).description
        blueLabel.text = Int(blueSlider.value).description
    }
}

