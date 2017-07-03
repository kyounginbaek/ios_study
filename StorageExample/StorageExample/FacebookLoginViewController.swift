//
//  FacebookLoginViewController.swift
//  
//
//  Created by BaekKyoung In on 2017. 5. 15..
//
//

import UIKit
import FBSDKLoginKit
import Firebase

class FacebookLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBSDKLoginButton()
        loginButton.delegate = self
        
        loginButton.readPermissions = ["email","user_friends"]
        
        loginButton.center = view.center
        view.addSubview(loginButton)

        // Do any additional setup after loading the view.
    }
    
    
}

extension FacebookLoginViewController:FBSDKLoginButtonDelegate {
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        if result.isCancelled {
            print("로그인 취소")
        } else {
            if error != nil {
                print(error.localizedDescription)
            }
            // token값이 제대로 옴
            let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
            
            FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
                
                guard error == nil else { return print(error?.localizedDescription) }
                
                print(user?.displayName)
                
            })
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
        print("로그아웃")
        try! FIRAuth.auth()?.signOut()
    }
    
}
