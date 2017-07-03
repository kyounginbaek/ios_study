//
//  ViewController.swift
//  FirebaseExample
//
//  Created by BaekKyoung In on 2017. 4. 21..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    
    @IBAction func buttonDidTapped(_ sender: Any) {
        let ref = FIRDatabase.database().reference()
        let data = ["Hello":"Swift", "Code":"Swift"]
        ref.setValue(data)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = FIRDatabase.database().reference()
        
        let data = ["Hello":"World"]
        
        ref.setValue(data)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

