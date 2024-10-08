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
    
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    
    @IBOutlet weak var doSomethingButton: UIButton!
    
    @IBAction func toggleControls(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            leftSwitch.isHidden = false
            rightSwitch.isHidden = false
            doSomethingButton.isHidden = true
        } else {
            leftSwitch.isHidden = true
            rightSwitch.isHidden = true
            doSomethingButton.isHidden = false
        }
    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Are you sure?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "Yes, I'm Sure", style: .destructive, handler: {
            action in let msg = self.nameField.text!.isEmpty ? "You can breathe easy, everything went OK." : "You can breathe easy, \(String(describing: self.nameField.text))," + "everything went OK."
            let controller2 = UIAlertController(title: "Something was done", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Phew!", style: .cancel, handler: nil)
            controller2.addAction(cancelAction)
            self.present(controller2, animated: true, completion: nil)
        })
        
        let noAction = UIAlertAction(title: "No way!", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
            ppc.permittedArrowDirections = .down
        }
        
        present(controller, animated: true, completion: nil)
    }
    
    
    
    @IBAction func onSliderChange(_ sender: UISlider) {
        sliderLabel.text = "\(lroundf(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

