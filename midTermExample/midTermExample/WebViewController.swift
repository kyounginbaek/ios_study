//
//  WebViewController.swift
//  midTermExample
//
//  Created by BaekKyoung In on 2017. 4. 14..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var url:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL (string: self.url)
        let requestObj = URLRequest(url: url! as URL)
        webView.loadRequest(requestObj)

        // Do any additional setup after loading the view.
    }

}
