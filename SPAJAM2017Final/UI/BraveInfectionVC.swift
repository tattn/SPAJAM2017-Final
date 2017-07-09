//
//  BraveInfectionVC.swift
//  BraveInfection
//
//  Created by 熊本 和正 on 2017/07/08.
//  Copyright © 2017年 TeamKamiya. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard
import RxSwift
import RxCocoa

@IBDesignable class RotateView: UIView {
    
    @IBInspectable var rotation: CGFloat = 0.0 {
        didSet {
            // 90度指定するためにはcodeでCGFloat(M_PI) / 2.0と入れたほうが安全そう
            self.transform = CGAffineTransform(rotationAngle: CGFloat(rotation))
        }
    }
    
    override func draw(_ rect: CGRect) {
        // ...
    }
}

@IBDesignable public class RoundedView: UIView {
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        let shadowPath = UIBezierPath(rect: bounds)
        layer.masksToBounds = true
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = CGSize(width: 0.1, height: 0.1)
        layer.shadowOpacity = 0.2
        layer.shadowPath = shadowPath.cgPath
        layer.shadowRadius = 0.5 * bounds.size.width
        
        //hard-coded this since it's always round
        layer.cornerRadius = 0.5 * bounds.size.width
    }
}

final class BraveInfectionVC: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var userIconView: UserIconView!
    @IBOutlet weak var 同じ高校View: RoundedView!
    @IBOutlet weak var 同じ誕生日View: RoundedView!
    @IBOutlet weak var 同じ出身地View: RoundedView!
    @IBOutlet weak var 同じ所在地View: RoundedView!
    
    private var isCenter = true
    
    static var instantiateSource: InstantiateSource {
        return .identifier(className)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize = UIScreen.main.bounds.size
        let center = CGPoint(x: screenSize.width * 3 / 2, y: screenSize.height * 3 / 2)
        setupRoundedViews(center: center, screenSize: screenSize)
        setupScrollView(to: center, screenSize: screenSize)
        setupViewsLocation(to: center)
    }
    
    private enum Direction {
        case up
        case right
        case down
        case left
        case none
        
        func diffFromCenter() -> CGPoint {
            switch self {
            case .up:
                return CGPoint(x: 0, y: -135)
            case .right:
                return CGPoint(x: 135, y: 0)
            case .down:
                return CGPoint(x: 0, y: 135)
            case .left:
                return CGPoint(x: -135, y: 0)
            case .none:
                return .zero
            }
        }
        func diffFromCenterForResults() -> CGPoint {
            switch self {
            case .up:
                return CGPoint(x: 0, y: -335)
            case .right:
                return CGPoint(x: 335, y: 0)
            case .down:
                return CGPoint(x: 0, y: 335)
            case .left:
                return CGPoint(x: -335, y: 0)
            case .none:
                return .zero
            }
        }
    }
    
    private func setupRoundedViews(center: CGPoint, screenSize: CGSize) {
        func addGesture(to view: UIView, goto direction: Direction) {
            var tapGesture = UITapGestureRecognizer()

            view.addGestureRecognizer(tapGesture)
            tapGesture.rx.event.subscribe(onNext: { _ in
                guard self.isCenter else {
                    self.scrollView.setContentOffset(CGPoint(x: center.x - screenSize.width * 3 / 2,
                                                             y: center.y - screenSize.height / 2),
                                                     animated: true)
                    self.isCenter = true
                    return
                }
                
                switch direction {
                case .up:
                    self.scrollView.setContentOffset(CGPoint(x: center.x - screenSize.width * 3 / 2,
                                                             y: 200),
                                                     animated: true)
                case .right:
                    self.scrollView.setContentOffset(CGPoint(x: center.x - screenSize.width * 3 / 2 + screenSize.width - 100,
                                                             y: center.y - screenSize.height / 2),
                                                     animated: true)
                case .down:
                    self.scrollView.setContentOffset(CGPoint(x: center.x - screenSize.width * 3 / 2,
                                                             y: center.y - screenSize.height / 2 + screenSize.height - 275),
                                                     animated: true)
                case .left:
                    self.scrollView.setContentOffset(CGPoint(x: center.x - screenSize.width * 3 / 2 - screenSize.width + 100,
                                                             y: center.y - screenSize.height / 2),
                                                     animated: true)
                case .none:
                    print("fuck you")
                }
                self.isCenter = false
            })
            .disposed(by: disposeBag)
        }
        
        addGesture(to: 同じ高校View, goto: .up)
        addGesture(to: 同じ誕生日View, goto: .left)
        addGesture(to: 同じ出身地View, goto: .right)
        addGesture(to: 同じ所在地View, goto: .down)
    }
    
    private func setupScrollView(to point: CGPoint, screenSize: CGSize) {
        scrollView.zoomScale = 1.0
        
        let 謎のズレ: CGFloat = 57.0
        scrollView.setContentOffset(CGPoint(x: point.x - screenSize.width * 3 / 2,
                                            y: point.y - screenSize.height / 2 + 謎のズレ),
                                    animated: false)
    }
    
    private func setupViewsLocation(to point: CGPoint) {
        func setup(view: UIView, direction: Direction = .none) {
            func setupResultButtons(center: CGPoint, direction: Direction = .none) {
                let buttonSize = CGSize(width: 100.0, height: 100.0)
                let defaultPoint = CGPoint(x: center.x - buttonSize.width / 2 + direction.diffFromCenterForResults().x,
                                           y: center.y - buttonSize.height / 2 + direction.diffFromCenterForResults().y)
                let view = UIView(frame: CGRect(origin: defaultPoint, size: buttonSize))
                view.backgroundColor = .red
                self.contentView.addSubview(view)
            }

            view.frame = CGRect(origin: CGPoint(x: point.x - view.frame.size.width / 2 + direction.diffFromCenter().x,
                                                y: point.y - view.frame.size.height / 2 + direction.diffFromCenter().y),
                                        size: view.frame.size)
            
            if direction != .none {
                setupResultButtons(center: point, direction: direction)
            }
        
        }
        
        setup(view: userIconView)
        setup(view: 同じ高校View, direction: .up)
        setup(view: 同じ誕生日View, direction: .left)
        setup(view: 同じ出身地View, direction: .right)
        setup(view: 同じ所在地View, direction: .down)
    }
}

extension BraveInfectionVC: StoryboardInstantiatable {
    struct Dependency {
        let title: String
        //        let id: String
    }
    
    func inject(_ dependency: Dependency) {
        title = dependency.title
        //        dependency.id
    }
}
