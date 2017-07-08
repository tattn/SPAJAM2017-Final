//
//  LoginVC.swift
//  SPAJAM2017Final
//
//  Created by Tatsuya Tanaka on 20170709.
//  Copyright © 2017年 tattn. All rights reserved.
//

import Foundation
import UIKit
import FBSDKLoginKit

final class LoginVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
//        let loginButton = FBSDKLoginButton()
//        loginButton.center = view.center
//        view.addSubview(loginButton)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if FBSDKAccessToken.current() != nil {
            close()
        } else {
        }
    }
    
    fileprivate func close() {
        dismiss(animated: true, completion: nil)
    }
}

extension LoginVC: FBSDKLoginButtonDelegate {
    
    func loginButton(_ loginButton: FBSDKLoginButton!,
                     didCompleteWith
        result: FBSDKLoginManagerLoginResult!,
                     error: Error!) {
        if error != nil {
            print("login error: \(error)")
        } else if result.isCancelled {
            print("login cancel")
        } else {
            close()
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Logout")
    }
}
