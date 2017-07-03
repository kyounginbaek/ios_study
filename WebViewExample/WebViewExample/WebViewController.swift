//
//  WebViewController.swift
//  WebViewExample
//
//  Created by BaekKyoung In on 2017. 3. 20..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UISearchBarDelegate, UIWebViewDelegate {
    @IBOutlet var webViewSearchBar: UISearchBar!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var webViewActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var errorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.titleView = webViewSearchBar
        
        webViewSearchBar.delegate = self
        webViewSearchBar.autocapitalizationType = .none
        
        let url = URL(string: "http://www.naver.com")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        
        if var text = searchBar.text {
            if text.hasPrefix("http://www.") == false {
                if text.hasPrefix("www.") == false {
                    //www가 없을 때
                    text = "www." + text
                }
                
                if text.hasPrefix("http://") == false {
                    text = "http://" + text
                }
            }
            
            if let url = URL(string: text){
                errorView.isHidden = true
                searchBar.text = text
                let request = URLRequest(url: url)
                webView.loadRequest(request)
            }
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = false
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        webViewActivityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        webViewActivityIndicator.stopAnimating()
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        errorView.isHidden = false
    }

}
