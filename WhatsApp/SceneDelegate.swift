//
//  SceneDelegate.swift
//  WhatsApp
//
//  Created by Евгений Березенцев on 30.05.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
//        let window = UIWindow(windowScene: windowScene)
//        window.rootViewController = TabBarController()
//        window.makeKeyAndVisible()
//        self.window = window
          window = UIWindow(windowScene: scene)
          window?.makeKeyAndVisible()
        window?.rootViewController = TabBarController()
    }

 

}

