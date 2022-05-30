//
//  TabBarController.swift
//  WhatsApp
//
//  Created by Евгений Березенцев on 30.05.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        let messageVC = createViewController(viewController: MessgesViewController(collectionViewLayout: UICollectionViewFlowLayout()), title: "Chats", image: UIImage(systemName: "message.fill")!)
        let cameraVC = createViewController(viewController: ViewController(), title: "Camera", image: UIImage(systemName: "camera")!)
        let phoneVC = createViewController(viewController: ViewController(), title: "Calls", image: UIImage(systemName: "phone")!)
        let settingsVC = createViewController(viewController: ViewController(), title: "Settings", image: UIImage(systemName: "gear")!)
        viewControllers = [messageVC, phoneVC,cameraVC,settingsVC]
    }
    

    private func createViewController(viewController: UIViewController,title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: viewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }

}
