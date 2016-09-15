//
//  ViewController.swift
//  MiraclePill
//
//  Created by Edrick Pascual on 9/14/16.
//  Copyright © 2016 Edge Designs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerButton: UIButton!
    
    let states = ["Alaska", "Alabama", "California", "Georgia", "Maine"]
    
    @IBAction func stateButtonPressed(sender: AnyObject) {
        statePicker.hidden = false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
        
    }

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // Set button to the state selected
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], forState: UIControlState.Normal)
        statePicker.hidden = true
    }
}

