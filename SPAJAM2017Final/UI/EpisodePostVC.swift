//
//  EpisodePostVC.swift
//  SPAJAM2017Final
//
//  Created by 熊本　和正 on 2017/07/09.
//  Copyright © 2017年 tattn. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard

final class EpisodePostVC: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var placeholderLabel: UILabel!
    
    static var instantiateSource: InstantiateSource {
        return .identifier(className)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
    }
}

extension EpisodePostVC: UITextViewDelegate {
    //textviewがフォーカスされたら、Labelを非表示
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool
    {
        placeholderLabel.isHidden = true
        return true
    }
    
    //textviewからフォーカスが外れて、TextViewが空だったらLabelを再び表示
    func textViewDidEndEditing(_ textView: UITextView) {
        if(textView.text.isEmpty){
            placeholderLabel.isHidden = false
        }
    }
}

extension EpisodePostVC: StoryboardInstantiatable {
    struct Dependency {
        let title: String
        //        let id: String
    }
    
    func inject(_ dependency: Dependency) {
        title = dependency.title
        //        dependency.id
    }
}
