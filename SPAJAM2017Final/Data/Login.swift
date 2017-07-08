//
//  Login.swift
//  SPAJAM2017Final
//
//  Created by Tatsuya Tanaka on 20170709.
//  Copyright © 2017年 tattn. All rights reserved.
//

import Foundation
import UIKit
import FBSDKLoginKit

final class Login {
    static func login(from vc: UIViewController, completion: (() -> Void)? = nil) {
        if FBSDKAccessToken.current() != nil {
            completion?()
            return
        }
        
        let login = FBSDKLoginManager()
        login.logIn(withReadPermissions: ["public_profile", "email"], from: vc) { (result, error) in
            if let error = error {
                print("permission error: \(error)")
                completion?()
                return
            }
            
            guard let result = result else {
                completion?()
                return
            }
            
            if result.isCancelled {
                print("permission cancel")
                completion?()
            } else {
                print("permission success")
                completion?()
            }
        }
    }
}
