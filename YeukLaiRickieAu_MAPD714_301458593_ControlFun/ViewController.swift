//
//  ViewController.swift
//  YeukLaiRickieAu_MAPD714_301458593_ControlFun
//
//  Created by Rickie Au on 24/9/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBAction func onSliderChange(_ sender: UISlider) {
        sliderLabel.text = "\(lroundf(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

