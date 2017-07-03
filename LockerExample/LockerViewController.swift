//
//  LockerViewController.swift
//  LockerExample
//
//  Created by BaekKyoung In on 2017. 3. 13..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class LockerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var unlockPickerView: UIPickerView!
    @IBOutlet weak var courseNameTextField: UITextField!
    
    var pickerViewArray = ["e","b","t","s"]
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        unlockPickerView.delegate = self
        unlockPickerView.dataSource = self
        
        courseNameTextField.delegate = self
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.viewDidTapped))
        self.view.addGestureRecognizer(gesture)
        
        // Do any additional setup after loading the view.
    }
    
    func viewDidTapped(){
        self.view.endEditing(true)
    }
    
    @IBAction func buttonDidTapped(_ sender: Any) {
        if leftSwitch.isOn == true &&
            rightSwitch.isOn == false &&
            unlockPickerView.selectedRow(inComponent: 0) == 1 &&
            unlockPickerView.selectedRow(inComponent: 1) == 0 &&
            unlockPickerView.selectedRow(inComponent: 2) == 3 &&
            pickerViewArray[unlockPickerView.selectedRow(inComponent: 3)]=="t" &&
            courseNameTextField.text == "Hello Swift"{
            
            performSegue(withIdentifier: "Unlock", sender: self)
            
            }
        }


    @IBAction func sliderDidSlided(_ sender: Any) {
        let slider = sender as! UISlider
        
        sliderLabel.text = String(slider.value)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerViewArray[row]
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
