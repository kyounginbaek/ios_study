//
//  ViewController.swift
//  segueExample
//
//  Created by BaekKyoung In on 2017. 3. 31..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bark:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonDidTapped(_ sender: UIButton) {
        if sender.tag == 1{
            // 강아지
            bark = "멍멍"
        } else {
            // 고양이
            bark = "야옹"
        }
        
        performSegue(withIdentifier: "Segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue" {
            if let destinationVC = segue.destination as? ResultViewController {
                destinationVC.barkReciever = bark
            }
        }
    }

}

