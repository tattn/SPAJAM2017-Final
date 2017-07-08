//
//  GraphAPI.swift
//  SPAJAM2017Final
//
//  Created by Tatsuya Tanaka on 20170709.
//  Copyright © 2017年 tattn. All rights reserved.
//

import Foundation
import UIKit
import FBSDKLoginKit

final class GraphAPI {
    static func me(from vc: UIViewController) {
        if FBSDKAccessToken.current() != nil {
            let request = FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "email"])
            _ = request?.start(completionHandler: { (_, result, error) in
                if let error = error {
                    print("graph me: \(error)")
                }
                print(result)
            })
        }
    }
}
