//
//  ViewController.swift
//  autoLayoutExample
//
//  Created by BaekKyoung In on 2017. 3. 24..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let rect1 = UIScreen.main.bounds
        let width = rect1.width
        let height = rect1.height
        
        let view1 = UIView(frame: CGRect(x: 100, y: 100, width: width-200, height: height-200))
        
        view1.backgroundColor = .red
        
        view.addSubview(view1)
        
//        let screenRect = UIScreen.main.bounds
//        let width = screenRect.width / 2
//        let height = screenRect.height / 2
//        let screenView = UIView()
//        screenView.frame = CGRect(x: 0, y: 0, width: width, height: height)
//        
//        view.addSubview(screenView)
//        screenView.backgroundColor = .red
//        
//        let testRect = CGRect(x: 40, y: 50, width: 200, height: 100)
//        let testView = UIView(frame: testRect)
//        testView.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
//        view.addSubview(testView)
//        
//        let testRect2 = CGRect(x: 40, y: 50, width: 100, height: 40)
//        let testView2 = UIView()
//        testView2.backgroundColor = UIColor.green
//        testView2.frame = testRect2
//        testView.addSubview(testView2)
        
    }

}

