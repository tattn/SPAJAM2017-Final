//
//  MyEpisodeVC.swift
//  SPAJAM2017Final
//
//  Created by 熊本　和正 on 2017/07/09.
//  Copyright © 2017年 tattn. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard

final class MyEpisodeVC: UIViewController {
    static var instantiateSource: InstantiateSource {
        return .identifier(className)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MyEpisodeVC: StoryboardInstantiatable {
    struct Dependency {
        let title: String
        //        let id: String
    }
    
    func inject(_ dependency: Dependency) {
        title = dependency.title
        //        dependency.id
    }
}
