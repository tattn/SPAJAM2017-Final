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
    
    @IBOutlet weak var floatingButton: UIButton!
    
    private var isCenter = true
    
    static var instantiateSource: InstantiateSource {
        return .identifier(className)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)


        ProgressHUD.show(title: "Facebookからデータを\n読み込んでいます", ignoreInteraction: true)

        let screenSize = UIScreen.main.bounds.size
        let center = CGPoint(x: screenSize.width * 3 / 2, y: screenSize.height * 3 / 2)

        self.setupScrollView(to: center, screenSize: screenSize)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TopVC.fetchFacebookData(view: self) {
            var tapGesture = UITapGestureRecognizer()
            self.floatingButton.addGestureRecognizer(tapGesture)
            tapGesture.rx.event.subscribe(onNext: { _ in
                self.scaleAnimateView(view: self.floatingButton)
                self.navigationController?.setNavigationBarHidden(false, animated: false)
                self.navigationController?.pushViewController(EpisodeVC.instantiate(with: .init(title: "エピソードを投稿する")), animated: true)
            }).disposed(by: self.disposeBag)
            
            tapGesture = UITapGestureRecognizer()
            self.userIconView.addGestureRecognizer(tapGesture)
            tapGesture.rx.event.subscribe(onNext: { _ in
                self.scaleAnimateView(view: self.userIconView)
                self.navigationController?.setNavigationBarHidden(false, animated: false)
                self.navigationController?.pushViewController(MyEpisodeVC.instantiate(with: .init(title: "あなた のエピソード")), animated: true)
            }).disposed(by: self.disposeBag)
            
            self.userIconView.setup(userName: TopVC.me!.name, userDescription: "これはあなたです", imageURL: URL(string: TopVC.me!.iconUrl)!)
            
            let screenSize = UIScreen.main.bounds.size
            let center = CGPoint(x: screenSize.width * 3 / 2, y: screenSize.height * 3 / 2)
            
            self.setupRoundedViews(center: center, screenSize: screenSize)
            self.setupViewsLocation(to: center)

            ProgressHUD.dismiss()
        }
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
                return CGPoint(x: 0, y: -300)
            case .right:
                return CGPoint(x: 280, y: 0)
            case .down:
                return CGPoint(x: 0, y: 280)
            case .left:
                return CGPoint(x: -280, y: 0)
            case .none:
                return .zero
            }
        }
        
        func margin(plus size: CGSize) -> CGPoint {
            switch self {
            case .up:
                return CGPoint(x: 0, y: -20 - size.height)
            case .right:
                return CGPoint(x: 10 + size.width, y: 0)
            case .down:
                return CGPoint(x: 0, y: 10 + size.height)
            case .left:
                return CGPoint(x: -20 - size.width, y: 0)
            case .none:
                return .zero
            }
        }
        
        func marginLeft(plus size: CGSize) -> CGPoint {
            switch self {
            case .up:
                return CGPoint(x: -(10 + size.height), y: (10 + size.height) / 2)
            case .right:
                return CGPoint(x: -(10 + size.width) / 2, y: -(10 + size.width))
            case .down:
                return CGPoint(x: (10 + size.height), y: -(10 + size.height) / 2)
            case .left:
                return CGPoint(x: (20 + size.width) / 2, y: (20 + size.width))
            case .none:
                return .zero
            }
        }

        func marginRight(plus size: CGSize) -> CGPoint {
            switch self {
            case .up:
                return CGPoint(x: (20 + size.height), y: (20 + size.height) / 2)
            case .right:
                return CGPoint(x: -(10 + size.width) / 2, y: (10 + size.width))
            case .down:
                return CGPoint(x: -(10 + size.height), y: -(10 + size.height) / 2)
            case .left:
                return CGPoint(x: (20 + size.width) / 2, y: -(20 + size.width))
            case .none:
                return .zero
            }
        }
    }
    
    func scaleAnimateView(view: UIView) {
        UIView.animate(withDuration: 0.0,
                       delay: 0.0,
                       options: .curveEaseIn,
                       animations: {
                        view.transform = view.transform.scaledBy(x: 1.1, y: 1.1)
        },
                       completion: {_ in
                        UIView.animate(withDuration: 0.0,
                                       delay: 0.0,
                                       options: .curveEaseIn,
                                       animations: {
                                        view.transform = view.transform.scaledBy(x: 0.9, y: 0.9)
                        }, completion: {_ in}
                        )}
        )
    }
    
    private func setupRoundedViews(center: CGPoint, screenSize: CGSize) {
        func addGesture(to view: UIView, goto direction: Direction) {
            var tapGesture = UITapGestureRecognizer()

            view.addGestureRecognizer(tapGesture)
            tapGesture.rx.event.subscribe(onNext: { _ in
                self.scaleAnimateView(view: view)
                
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
        setup(view: userIconView, point: point)
        setup(view: 同じ高校View, point: point, direction: .up)
        setup(view: 同じ誕生日View, point: point, direction: .left)
        setup(view: 同じ出身地View, point: point, direction: .right)
        setup(view: 同じ所在地View, point: point, direction: .down)
    }
    
    private func setup(view: UIView, point: CGPoint, direction: Direction = .none) {
        func setupResultButtons(center: CGPoint, direction: Direction = .none, friends: [GraphMe], limit: Int) {
            func createButton(defaultPoint: CGPoint, buttonSize: CGSize, friend: GraphMe) {
                let view = UserIconView(frame: CGRect(origin: defaultPoint, size: buttonSize))
                view.setup(userName: friend.name,
                           userDescription: friend.works.first?.employerName ?? "",
                           imageURL: URL(string: friend.iconUrl)!)
                self.contentView.addSubview(view)
            }
            
            let buttonSize = CGSize(width: 115.0, height: 115.0)
            var defaultPoint = CGPoint(x: center.x - buttonSize.width / 2 + direction.diffFromCenterForResults().x,
                                       y: center.y - buttonSize.height / 2 + direction.diffFromCenterForResults().y)
            
            guard let friend = friends.first else { return }
            createButton(defaultPoint: defaultPoint, buttonSize: buttonSize, friend: friend)

            guard friends.count > 1 else { return }
            
            let forLimit = limit > friends.count ? friends.count : limit
            for i in 1 ..< forLimit - 1 {
                if i % 3 == 0 {
                    createButton(defaultPoint: defaultPoint,
                                 buttonSize: buttonSize,
                                 friend: friends[i])
                } else if i % 3 == 1 {
                    defaultPoint = CGPoint(x: defaultPoint.x + direction.margin(plus: buttonSize).x,
                                           y: defaultPoint.y + direction.margin(plus: buttonSize).y)

                    createButton(defaultPoint: CGPoint(x: defaultPoint.x + direction.marginLeft(plus: buttonSize).x,
                                                       y: defaultPoint.y + direction.marginLeft(plus: buttonSize).y),
                                 buttonSize: buttonSize,
                                 friend: friends[i])
                } else {
                    createButton(defaultPoint: CGPoint(x: defaultPoint.x + direction.marginRight(plus: buttonSize).x,
                                                       y: defaultPoint.y + direction.marginRight(plus: buttonSize).y),
                                 buttonSize: buttonSize,
                                 friend: friends[i])
                }
            }
        }
        
        view.frame = CGRect(origin: CGPoint(x: point.x - view.frame.size.width / 2 + direction.diffFromCenter().x,
                                            y: point.y - view.frame.size.height / 2 + direction.diffFromCenter().y),
                            size: view.frame.size)
        
        let friends = TopVC.friends!
        let me = TopVC.me!
        
        switch direction {
        case .none:
            break
        case .up:
            setupResultButtons(center: point,
                               direction: direction,
                               friends: friends,
                               limit: 11) // 同じ高校
        case .down:
            setupResultButtons(center: point,
                               direction: direction,
                               friends: friends,
                               limit: 11) // 同じ所在地→趣味
        case .right:
            setupResultButtons(center: point,
                               direction: direction,
                               friends: friends.filter { $0.hometownName == me.hometownName },
                               limit: 5) // 同じ出身地
        case .left:
            setupResultButtons(center: point,
                               direction: direction,
                               friends: friends.filter { $0.birthday == me.birthday },
                               limit: 5) // 同じ誕生日
        }
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
