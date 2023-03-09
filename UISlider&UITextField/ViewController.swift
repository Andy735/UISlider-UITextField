//
//  ViewController.swift
//  UISlider&UITextField
//
//  Created by TR on 2023/2/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var IView: UIImageView!
    @IBOutlet weak var RSlider: UISlider!
    @IBOutlet weak var GSlider: UISlider!
    @IBOutlet weak var BSlider: UISlider!
    
    @IBOutlet weak var RText: UILabel!
    @IBOutlet weak var GText: UILabel!
    @IBOutlet weak var BText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Slider放開才刷新
        RSlider.isContinuous = false
        GSlider.isContinuous = false
        BSlider.isContinuous = false
    }
    
    @IBAction func SliderAction(_ sender: Any) {
        
        IView.backgroundColor = UIColor(
            red: CGFloat((RSlider.value)/255),
            green: CGFloat((GSlider.value)/255),
            blue: CGFloat((BSlider.value)/255),
            alpha: 1)
        
        RText.text = Int(RSlider.value).description
        GText.text = Int(GSlider.value).description
        BText.text = Int(BSlider.value).description
    }
}

