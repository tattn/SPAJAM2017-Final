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
import RxSwift

struct GraphMe {
    let gender: String
    let locationName: String
    let works: [Work]
    let educations: [Eduction]
    let id: String // 747789068725242
    let birthday: String // MM/HH/YYYY
    let hometownName: String
    let name: String
    let iconUrl: String

    struct Work {
        let employerName: String // hoge株式会社
        let startDate: String // 0000-00 // 未設定？
        let id: String
        let locationName: String
        let positionName: String // エンジニア
    }
    
    struct Eduction {
        let name: String
    }
}

struct TaggableFriend {
    let id: String // AaJOeKiZlF3v6we8WQs56p_dRWdzXyyu6Ad0am9Lf0hjW16rbxEXmETWyLxs2mwPzXYMUNtwMTtLZRaOVre1R88lxiGRZat5Ognv79qo-wHLvQ
    let name: String
}

struct Feed {
    let message: String?
    let id: String?
    let caption: String?
    let description: String?
    let icon: String?
    let link: String?
    let name: String?
    let shares: String?
    let message_tags: Any?
    let objectType: String? // enum{link, status, photo, video, offer}
    let objectId: String?
}

final class GraphAPI {
    static func me(completion: @escaping (Result<GraphMe, NSError>) -> Void) {
        guard FBSDKAccessToken.current() != nil else { return }
        let params: [String: String] = ["fields": "name,about,birthday,hometown,gender,location,education,work,picture.type(large)", "locale": "ja_JP"]
        let request = FBSDKGraphRequest(graphPath: "me", parameters: params)
        _ = request?.start(completionHandler: { (_, result, error) in
            if let error = error {
                print("graph me: \(error)")
                return
            }
            
            if let result = result as? [String: Any] {
                let graphMe = GraphMe(gender: result["gender"] as! String,
                                      locationName: (result["location"] as? [String: Any])?["name"] as? String ?? "",
                                      works: ((result["work"] as? [[String: Any]]) ?? []).map {
                                        GraphMe.Work.init(employerName: ($0["employer"] as! [String: Any])["name"] as! String,
                                                          startDate: $0["start_date"] as? String ?? "",
                                                          id: $0["id"] as! String,
                                                          locationName: ($0["location"] as? [String: Any] ?? [:])["name"] as? String ?? "",
                                                          positionName: ($0["position"] as? [String: Any] ?? [:])["name"] as? String ?? "")
                    },
                                      educations: (result["education"] as? [[String: Any]] ?? []).map {
                                        GraphMe.Eduction(name: ($0["classes"] as? [String: Any] ?? [:])["name"] as? String ?? "")
                    },
                                      id: result["id"] as! String,
                                      birthday: result["birthday"] as? String ?? "",
                                      hometownName: (result["hometown"] as? [String: Any])?["name"] as? String ?? "",
                                      name: result["name"] as! String,
                                      iconUrl: ((result["picture"] as? [String: Any])?["data"] as? [String: Any])?["url"] as? String ?? "")
                print(graphMe)
                completion(.success(graphMe))
            }
        })
    }
    
//    static func friends(completion: @escaping (Result<[TaggableFriend], NSError>) -> Void) {
    static func friends(completion: @escaping (Result<[GraphMe], NSError>) -> Void) {
        guard FBSDKAccessToken.current() != nil else { return }
        
        let params: [String: String] = ["fields": "id,name,picture", "locale": "ja_JP"]
        let request = FBSDKGraphRequest(graphPath: "me/friends", parameters: params)
        _ = request?.start(completionHandler: { (_, result, error) -> Void in
            
            if let error = error {
                print("graph friends: \(error)")
                return
            }
            
            guard let result = result as? [String: Any] else { return }
            
            let summary = result["summary"] as! NSDictionary
            let counts = summary["total_count"] as! Int
            
            let params = "name,about,birthday,hometown,gender,location,education,work,picture.type(large)"
//            let graphRequest: FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me/taggable_friends", parameters: ["fields": params, "limit": "\(counts)", "locale": "ja_JP"])
//            graphRequest.start( completionHandler: { (_, result, error) -> Void in
//                
//                if let error = error {
//                    print("graph taggable_friends: \(error)")
//                    return
//                }
//                
//                guard let result = result as? [String: Any] else { return }
//                
//                let friends = (result["data"] as! [[String: Any]]).map {
//                    TaggableFriend(id: $0["id"] as! String,
//                                   name: $0["name"] as! String)
//                }
//                print("taggable_friends: \(friends)")
//                completion(.success(friends))
//
//            })
            
            // タグ付け可能なすべての友達を取得 (idがハッシュ化されているため使用が難しい) (https://developers.facebook.com/docs/graph-api/reference/user-taggable-friend/ )
            //let graphRequest = FBSDKGraphRequest(graphPath: "me/taggable_friends", parameters: params)
            // 同じアプリを承認している友達を取得 (https://developers.facebook.com/docs/graph-api/reference/user/friends )
            let graphRequest = FBSDKGraphRequest(graphPath: "me/friends", parameters: ["fields": params, "limit": "\(counts)", "locale": "ja_JP"])
            _ = graphRequest?.start { _, result, error in
                
                if let error = error {
                    print("graph taggable_friends: \(error)")
                    return
                }
                
                guard let result = result as? [String: Any] else { return }
                let friends = (result["data"] as! [[String: Any]]).map { result in
                    GraphMe(gender: result["gender"] as! String,
                            locationName: (result["location"] as? [String: Any] ?? [:])["name"] as? String ?? "",
                            works: (result["work"] as? [[String: Any]] ?? []).map {
                                GraphMe.Work.init(employerName: ($0["employer"] as! [String: Any])["name"] as! String,
                                                  startDate: $0["start_date"] as! String,
                                                  id: $0["id"] as! String,
                                                  locationName: ($0["location"] as! [String: Any])["name"] as! String,
                                                  positionName: ($0["position"] as! [String: Any])["name"] as! String)
                        },
                            educations: (result["education"] as? [[String: Any]] ?? []).map {
                                GraphMe.Eduction(name: ($0["classes"] as? [String: Any] ?? [:])["name"] as? String ?? "")
                        },
                            id: result["id"] as! String,
                            birthday: result["birthday"] as? String ?? "",
                            hometownName: (result["hometown"] as? [String: Any] ?? [:])["name"] as? String ?? "",
                            name: result["name"] as! String,
                            iconUrl: ((result["picture"] as! [String: Any])["data"] as! [String: Any])["url"] as! String)
                    } + Mock.friends()
                
                print(friends)
                completion(.success(friends))
            }
        })
    }
    
    static func profile(userId: String, completion: @escaping (Result<GraphMe, NSError>) -> Void) {
        guard FBSDKAccessToken.current() != nil else { return }
        
        let params: [String: String] = ["fields": "name,about,birthday,hometown,gender,location,education,work,picture.type(large)", "locale": "ja_JP"]
        let request = FBSDKGraphRequest(graphPath: "/\(userId)", parameters: params)
        _ = request?.start(completionHandler: { (_, result, error) -> Void in
            if let error = error {
                print("graph friends: \(error)")
                return
            }
            
            guard let result = result as? [String: Any] else { return }
            
            let graphMe = GraphMe(gender: result["gender"] as! String,
                                  locationName: (result["location"] as! [String: Any])["name"] as! String,
                                  works: (result["work"] as! [[String: Any]]).map {
                                    GraphMe.Work.init(employerName: ($0["employer"] as! [String: Any])["name"] as! String,
                                                      startDate: $0["start_date"] as! String,
                                                      id: $0["id"] as! String,
                                                      locationName: ($0["location"] as! [String: Any])["name"] as! String,
                                                      positionName: ($0["position"] as! [String: Any])["name"] as! String)
                },
                                  educations: (result["education"] as? [[String: Any]] ?? []).map {
                                    GraphMe.Eduction(name: ($0["classes"] as? [String: Any] ?? [:])["name"] as? String ?? "")
                },
                                  id: result["id"] as! String,
                                  birthday: result["birthday"] as! String,
                                  hometownName: (result["hometown"] as! [String: Any])["name"] as! String,
                                  name: result["name"] as! String,
                                  iconUrl: ((result["picture"] as! [String: Any])["data"] as! [String: Any])["url"] as! String)
            print(graphMe)
            completion(.success(graphMe))
        })
    }

    static func feed(userId: String, completion: @escaping (Result<[Feed], NSError>) -> Void) {
        guard FBSDKAccessToken.current() != nil else { return }
        
        let params: [String: String] = ["fields": "message,caption,description,icon,link,name,shares,message_tags,object_type,object_id", "locale": "ja_JP", "limit": "\(100)"]
        let request = FBSDKGraphRequest(graphPath: "/\(userId)/feed", parameters: params)
        _ = request?.start(completionHandler: { (_, result, error) -> Void in
            
            if let error = error {
                print("graph friends: \(error)")
                return
            }
            
            guard let result = result as? [String: Any] else { return }
            
            // ページングやりたい
            // result["paging"]になんかはいってる
            let feeds = (result["data"] as! [[String: Any]]).map {
                Feed(message: $0["message"] as? String,
                     id: $0["id"] as? String,
                     caption: $0["caption"] as? String,
                     description: $0["description"] as? String,
                     icon: $0["icon"] as? String,
                     link: $0["link"] as? String,
                     name: $0["name"] as? String,
                     shares: $0["shares"] as? String,
                     message_tags: $0["message_tags"] as Any,
                     objectType: $0["object_type"] as? String,
                     objectId: $0["object_id"] as? String
                )
            }
            
            print(feeds)
            completion(.success(feeds))
        })
    }
    
    static func photos0(userId: String, completion: @escaping (Result<[Feed], NSError>) -> Void) {
        guard FBSDKAccessToken.current() != nil else { return }
        
        let params: [String: String] = ["fields": "link", "locale": "ja_JP", "limit": "\(100)"]
        let request = FBSDKGraphRequest(graphPath: "/\(userId)/photos", parameters: params)
        _ = request?.start(completionHandler: { (_, result, error) -> Void in
            
            if let error = error {
                print("graph friends: \(error)")
                return
            }
            
            guard let result = result as? [String: Any] else { return }
            
//            let albumIds = (result["data"] as? [[String: Any]] ?? []).flatMap { $0["id"] as? String }
            //            completion(.success(feeds))
        })
    }
    
    static func photos(userId: String, completion: @escaping (Result<[String], NSError>) -> Void) {
        guard FBSDKAccessToken.current() != nil else { return }
        
        let params: [String: String] = ["fields": "id", "locale": "ja_JP", "limit": "\(100)"]
        let request = FBSDKGraphRequest(graphPath: "/\(userId)/albums", parameters: params)
        _ = request?.start(completionHandler: { (_, result, error) -> Void in
            
            if let error = error {
                print("graph friends: \(error)")
                return
            }
            
            guard let result = result as? [String: Any] else { return }
        
            var imageUrls: [String] = []
            let group = DispatchGroup()
            let albumIds = (result["data"] as? [[String: Any]] ?? []).flatMap { $0["id"] as? String }
            
            for albumId in albumIds {
                group.enter()
                DispatchQueue.global().async {
                    let params: [String: String] = ["fields": "link,picture,images", "locale": "ja_JP", "limit": "\(100)"]
                    let request = FBSDKGraphRequest(graphPath: "/\(albumId)/photos", parameters: params)
                    _ = request?.start(completionHandler: { (_, result, error) -> Void in
                        
                        if let error = error {
                            print("graph friends: \(error)")
                            return
                        }
                        
                        guard let result = result as? [String: Any] else { return }
                        
                        if let imageUrl = ((result["data"] as? [[String: Any]] ?? [])[0]["images"] as? [[String: Any]] ?? [])[0]["source"] as? String {
                            imageUrls.append(imageUrl)
                        }
                        group.leave()
                    })
                }
            }
            
            group.notify(queue: .main) {
                print(imageUrls)
                completion(.success(imageUrls))
            }
        })
        
    }
}
