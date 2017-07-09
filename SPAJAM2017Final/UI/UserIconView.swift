//
//  UserIconView.swift
//  SPAJAM2017Final
//
//  Created by yuchimur on 2017/07/09.
//  Copyright © 2017年 tattn. All rights reserved.
//

import UIKit

class UserIconView: RoundedView {
    @IBOutlet private weak var userImage: UIImageView!
    @IBOutlet private weak var underView: UIView!
    @IBOutlet private weak var userName: UILabel!
    @IBOutlet private weak var userDescription: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loadFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        loadFromNib()
    }
    
    func convertSmall() {
        userName.font.withSize(10.0) // default: 18
        userDescription.font.withSize(8.0) // default: 10
    }
    
    private func loadFromNib() {
        guard let views = Bundle(for: type(of: self)).loadNibNamed(className, owner: self),
            let view = views.first as? UIView else {
                fatalError("failed to load \(className) view from Nib.")
        }

        let maskLayer = CAGradientLayer()
        maskLayer.frame = underView.bounds
        maskLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor]
        maskLayer.startPoint = CGPoint(x: 0.5, y: -0.0)
        maskLayer.endPoint = CGPoint(x: 0.5, y: 0.2)
        underView.layer.mask = maskLayer

        addSubview(view)
    }
}

