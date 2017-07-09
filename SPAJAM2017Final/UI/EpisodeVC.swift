//
//  EpisodeVC.swift
//  SPAJAM2017Final
//
//  Created by 熊本　和正 on 2017/07/09.
//  Copyright © 2017年 tattn. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard

final class EpisodeVC: UIViewController {
    @IBOutlet weak var episodeLabel: UILabel!
    
    static var instantiateSource: InstantiateSource {
        return .identifier(className)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lineHeight: CGFloat = 25.0
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = lineHeight
        paragraphStyle.maximumLineHeight = lineHeight
        let attributedText = NSMutableAttributedString(string: episodeLabel.text!)
        attributedText.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, attributedText.length))
        episodeLabel.attributedText = attributedText

    }
}

extension EpisodeVC: StoryboardInstantiatable {
    struct Dependency {
        let title: String
        //        let id: String
    }
    
    func inject(_ dependency: Dependency) {
        title = dependency.title
        //        dependency.id
    }
}
