//
//  SceneDelegate.swift
//  Bookshelf
//
//  Created by Ivan Pushkov on 14.01.2025.
//

import UIKit

enum WindowCase{
    case reg,
         preview,
         onboarding,
         main
}
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        NotificationCenter.default.addObserver(self, selector: #selector(windowManager), name: Notification.Name.windowsManager, object: nil)
        guard let scene = (scene as? UIWindowScene) else { return }
        window  = UIWindow(windowScene: scene)
        window?.rootViewController = PreviewView()
        window?.makeKeyAndVisible()
    }
    @objc func windowManager(notification: Notification) {
        guard let usertInfo = notification.userInfo as? [String: WindowCase],
        let windowInfo = usertInfo[.windowInfo] else {return}
        switch window {
        default : self.window?.rootViewController = Builder.createRegisterView()
        }
    }

}

