//
//  DatabaseRecieveViewController.swift
//  FirebaseExample
//
//  Created by BaekKyoung In on 2017. 5. 1..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class DatabaseRecieveViewController: UIViewController {
    
    @IBOutlet weak var animalLabel: UILabel!
    
    let rootRef = FIRDatabase.database().reference()
    var animalRef:FIRDatabaseReference {
        // computed property
        // 쓰일 때 초기화를 시킴,  동시 초기화를 막기 위함
        return rootRef.child("animal")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalRef.observe(.value, with: { (snapshot) in
            
            self.animalLabel.text = snapshot.value as! String
            
        })
    }

    @IBAction func buttonDidTapped(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "강아지" {
            animalRef.setValue("강아지")
        } else {
            animalRef.setValue("고양이")
        }
        
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
