//
//  ViewController.swift
//  LockerExample
//
//  Created by Hyeonseok Bang on 2017. 3. 12..
//  Copyright © 2017년 Hyeonseok Bang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    @IBOutlet weak var lockSlider: UISlider!
    @IBOutlet weak var lockPickerView: UIPickerView!
    @IBOutlet weak var lockDatePicker: UIDatePicker!
    @IBOutlet weak var lockTextField: UITextField!
    @IBOutlet weak var lockSliderLabel: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    var pickerViewWords:[String]!
    
    
    func unlockTheLocker() -> Bool {
        let calendar = Calendar.current
        
        
        if leftSwitch.isOn &&
            !rightSwitch.isOn &&
            lockSliderLabel.text == "75.0" &&
            lockTextField.text == "Hello Swift" &&
            lockPickerView.selectedRow(inComponent: 0) == 1 &&
            lockPickerView.selectedRow(inComponent: 1) == 0 &&
            lockPickerView.selectedRow(inComponent: 2) == 3 &&
            lockPickerView.selectedRow(inComponent: 3) == 2 &&
            calendar.component(.hour, from: lockDatePicker.date) == 3 &&
            calendar.component(.minute, from: lockDatePicker.date) == 00{
            
            
            return true
            
        } else {
            return false
        }
    }
    
    @IBAction func sliderDidSlided(_ sender: UISlider) {
        lockSliderLabel.text =  String(round(sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeSettings()
        
        
        
        
        
    }
    
    @IBAction func unlockButtonDidTapped(_ sender: UIButton) {
        
        if unlockTheLocker() {
            performSegue(withIdentifier: "Unlock", sender: self)
        }
        
    }
    func initializeSettings() {
        pickerViewWords = ["e","b","t","s"]
        lockPickerView.delegate = self
        lockPickerView.dataSource = self
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerViewWords[row]
    }
    
}

