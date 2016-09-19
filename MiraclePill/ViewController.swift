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
    
    @IBOutlet weak var successImageView: UIImageView!
    
    @IBOutlet weak var stateTextfield: UITextField!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var countryTextfield: UITextField!
    
    @IBOutlet weak var zipTextfield: UITextField!
    
    @IBOutlet weak var zipLabel: UILabel!
    let states = ["Alaska", "Alabama", "California", "Georgia", "Maine"]
    
    
    func isHidden() {
        countryLabel.hidden = true
        countryTextfield.hidden = true
        zipLabel.hidden = true
        zipTextfield.hidden = true
    }
    
    func notHidden() {
        countryLabel.hidden = false
        countryTextfield.hidden = false
        zipLabel.hidden = false
        zipTextfield.hidden = false
    }
    
    
    @IBAction func stateButtonPressed(sender: AnyObject) {
        statePicker.hidden = false
        statePickerButton.hidden = true
        isHidden()
    }
    
    @IBOutlet weak var buyNowButton: UIButton!
    
    @IBAction func buyNowButtonPressed(sender: UIButton) {
        
        buyNowButton.hidden = true
        successImageView.hidden = false
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
//        statePickerButton.setTitle(states[row], forState: UIControlState.Normal)
        stateTextfield.text = states[row]
        statePicker.hidden = true
        stateTextfield.hidden = false
        notHidden()
    }
    
}

