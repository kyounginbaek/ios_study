//
//  ViewController.swift
//  CcoaPodsExample
//
//  Created by BaekKyoung In on 2017. 4. 17..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit
import ALThreeCircleSpinner

class ViewController: UIViewController {
    
    @IBOutlet weak var onoffSwitch: UISwitch!
    let spinner = ALThreeCircleSpinner(frame: CGRect(x: 0, y: 0, width: 30, height: 30))

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        spinner.hidesWhenStopped = false
        spinner.center = view.center
        spinner.tintColor = .red
        
        view.addSubview(spinner)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onoffAction(_ sender: UISwitch) {
        if onoffSwitch.isOn == true{
            spinner.startAnimating()
        }
        if onoffSwitch.isOn == false{
            spinner.stopAnimating()
        }
    }
}

