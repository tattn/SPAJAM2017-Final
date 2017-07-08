//
//  UserIconView.swift
//  SPAJAM2017Final
//
//  Created by yuchimur on 2017/07/09.
//  Copyright © 2017年 tattn. All rights reserved.
//

import UIKit

class UserIconView: RoundedView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loadFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        loadFromNib()
    }
    
    private func loadFromNib() {
        guard let views = Bundle(for: type(of: self)).loadNibNamed(className, owner: self),
            let view = views.first as? UIView else {
                fatalError("failed to load \(className) view from Nib.")
        }
        
        addSubview(view)
    }
}

