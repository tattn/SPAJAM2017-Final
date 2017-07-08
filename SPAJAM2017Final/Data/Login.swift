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
        
        let permissions: [String] = [
            "public_profile", "user_friends", "user_birthday", "user_education_history", "user_posts", "user_hometown", "user_likes", "user_location", "user_work_history", "user_photos", "user_about_me"
        ]
        
        let login = FBSDKLoginManager()
        login.logIn(withReadPermissions: permissions, from: vc) { (result, error) in
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
