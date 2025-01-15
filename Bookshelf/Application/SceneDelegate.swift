//
//  SceneDelegate.swift
//  Bookshelf
//
//  Created by Ivan Pushkov on 14.01.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    enum WindowCases{
        case reg,
        preview,
        onboarding,
        main
    }
    
    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        NotificationCenter.default.addObserver(self, selector: #selector(windowManager), name: Notification.Name.windowsManager, object: nil)
        guard let scene = (scene as? UIWindowScene) else { return }
        window  = UIWindow(windowScene: scene)
        window?.rootViewController = PreviewView()
        window?.makeKeyAndVisible()
    }
    @objc func windowManager(notification: Notification) {
//        switch window{
//        case .preview:
//            <#code#>
//        case .reg:
//            <#code#>
//        case .onboarding:
//            <#code#>
//        case .main:
//            <#code#>
//        }
    }

}

