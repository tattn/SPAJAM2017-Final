//
//  APIClient.swift
//  SPAJAM2017Final
//
//  Created by Tatsuya Tanaka on 20170709.
//  Copyright © 2017年 tattn. All rights reserved.
//

import Foundation
import Alamofire

struct APIClient {
    static func getTags(userId: String = "101761067145209", completion: @escaping ([String]) -> Void) {
        Alamofire.request("http://52.243.33.233:80/getUserTags/" + userId,
                          method: .get,
                          parameters: nil,
                          encoding: JSONEncoding.default).responseJSON { response in
                            guard let value = response.result.value as? [String: Any] else { completion([]); return }
                            completion((value["data"] as? [String: Any] ?? [:])?["UserTags"] as? [String] ?? [])
        }
    }
    
    static func registerPhotos(userId: String = "101761067145209") {
        GraphAPI.photos(userId: userId) { result in
            let imageUrls = result.value ?? []
            let data = imageUrls.joined(separator: ",")
            
            Alamofire.request("http://52.243.33.233:80/registUserTags",
                              method: .post,
                              parameters: ["userId": userId,
                                           "imageUrls": data,
                                           "endFlag": "0"], encoding: JSONEncoding.default).response { response in
                                            print(response)
            }
        }
    }
}
