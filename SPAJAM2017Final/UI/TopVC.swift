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
            self.navigationController?.pushViewController(BraveInfectionVC.instantiate(with: .init(title: "🐱")), animated: true)
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
    
    func registerPhotos(userId: String = "101761067145209") {
        GraphAPI.photos(userId: userId) { result in
            let imageUrls = result.value ?? []
            let data = imageUrls.joined(separator: ",")
            Alamofire.request("http://52.243.33.233:80/registUser",
                              method: .post,
                              parameters: ["userId": userId,
                                           "userData": data,
                                           "endFlag": "0"], encoding: JSONEncoding.default).response { response in
                                            print(response)
            }
        }
    }

    @IBAction func tapLoginButton(_ sender: Any) {
        
        return
        Login.login(from: self) {
            GraphAPI.me { _ in
//                GraphAPI.friends { _ in
//                    GraphAPI.profile(userId: "747789068725242") { _ in
//                        GraphAPI.feed(userId: "747789068725242") { _ in
//                            GraphAPI.photos(userId: "101761067145209") { _ in
//                            }
//                        }
//                    }
//                }
            }
        }
    }
}
