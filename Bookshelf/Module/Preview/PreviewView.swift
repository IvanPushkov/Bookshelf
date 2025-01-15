//
//  PreviewView.swift
//  Bookshelf
//
//  Created by Ivan Pushkov on 14.01.2025.
//

import UIKit
import Lottie

class PreviewView: UIViewController{
    lazy var lottieView : LottieAnimationView = {
        $0.frame.size = CGSize(width: view.frame.size.width - 80, height: view.frame.size.width - 80)
        $0.center = view.center
        $0.loopMode = .loop
        return $0
    } (LottieAnimationView(name:"Animation - 1736845865000" ))
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "BGMain")
        view.addSubview(lottieView)
        lottieView.play()
    }
}
