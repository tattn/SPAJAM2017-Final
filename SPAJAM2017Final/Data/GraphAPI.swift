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
import Result

struct GraphMe {
    let gender: String
    let locationName: String
    let works: [Work]
    let id: String // 747789068725242
    let birthday: String // MM/HH/YYYY
    let hometownName: String
    let name: String

    struct Work {
        
    }
}

final class GraphAPI {
    static func me(from vc: UIViewController, completion: @escaping (Result<GraphMe, NSError>) -> Void) {
        if FBSDKAccessToken.current() != nil {
            let params: [String: String] = ["fields": "name,about,birthday,hometown,gender,location,work", "locale": "ja_JP"]
            let request = FBSDKGraphRequest(graphPath: "me", parameters: params)
            _ = request?.start(completionHandler: { (_, result, error) in
                if let error = error {
                    print("graph me: \(error)")
                }
                
                if let result = result as? [String: Any] {
                    let graphMe = GraphMe(gender: result["gender"] as! String,
                                          locationName: (result["location"] as! [String: Any])["name"] as! String,
                                          works: [],
                                          id: result["id"] as! String,
                                          birthday: result["birthday"] as! String,
                                          hometownName: (result["hometown"] as! [String: Any])["name"] as! String,
                                          name: result["name"] as! String)
                    print(graphMe)
                    completion(.success(graphMe))
                }
            })
        }
    }
}
