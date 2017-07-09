//
//  TopVC.swift
//  HackathonStarter
//
//  Created by 田中　達也 on 2016/06/30.
//  Copyright © 2016年 tattn. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard
import RxSwift
import RxCocoa
import Alamofire


final class TopVC: UIViewController, StoryboardInstantiatable {
    static var me: GraphMe? = nil
    static var friends: [GraphMe]? = []
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var label2: UILabel!
    
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    func inject(_ dependency: String) {
        label.text = dependency
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "🐱"
        label2.text = "🐶"
        
        var tapGesture = UITapGestureRecognizer()
        label.addGestureRecognizer(tapGesture)
        tapGesture.rx.event.subscribe(onNext: { _ in
            TopVC.fetchFacebookData(view: self) {
                self.navigationController?.setNavigationBarHidden(true, animated: false)
                self.navigationController?.pushViewController(BraveInfectionVC.instantiate(with: .init(title: "")), animated: true)
            }
        })
        .disposed(by: disposeBag)
        
        tapGesture = UITapGestureRecognizer()
        label2.addGestureRecognizer(tapGesture)
        tapGesture.rx.event.subscribe(onNext: { _ in
            self.navigationController?.pushViewController(SimpleCollectionVC.instantiate(with: .init(title: "🐶")), animated: true)
        })
        .disposed(by: disposeBag)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func tapLoginButton(_ sender: Any) {
//        Login.login(from: self) { 
////        APIClient.registerPhotos(userId: "101761067145209")
//        APIClient.getTags(userId: "101761067145209")
//        }
//        
//        return
        //Login.login(from: self) {
         //   GraphAPI.me { _ in
//                GraphAPI.friends { _ in
//                    GraphAPI.profile(userId: "747789068725242") { _ in
//                        GraphAPI.feed(userId: "747789068725242") { _ in
//                            GraphAPI.photos(userId: "101761067145209") { _ in
//                            }
//                        }
//                    }
//                }
        TopVC.fetchFacebookData(view: self, completion: nil)
    }
    
    class func fetchFacebookData(view: UIViewController, completion: (() -> Void)?) {
        Login.login(from: view) {
            GraphAPI.me { meResult in
                switch meResult {
                case .success(let me):
                    TopVC.me = me
                case .failure(_):
                    break
                }
                
                GraphAPI.friends { friendsResult in
                    switch friendsResult {
                    case .success(let friends):
                        TopVC.friends = friends
                    case .failure(_):
                        break
                    }
                    completion?()
                    /*
                     GraphAPI.profile(userId: "747789068725242") { _ in
                     GraphAPI.feed(userId: "747789068725242") { _ in
                     GraphAPI.photos(userId: "747789068725242") { _ in
                     }
                     
                     }
                     }*/
                }
            }
        }
    }
}
