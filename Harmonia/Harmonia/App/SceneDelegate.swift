//
//  SceneDelegate.swift
//  Harmonia
//
//  Created by Игорь Пустыльник on 31.12.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // MARK: - Public properties

    var window: UIWindow?

    // MARK: - Private properties

    private lazy var appCoordinator: Coordinator = AppCoordinator()

    // MARK: - Configuration

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }
        window = UIWindow(windowScene: windowScene)
        window?.windowScene = windowScene
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()

        appCoordinator.start()
    }

    func scene(_ scene: UIScene,
               openURLContexts URLContexts: Set<UIOpenURLContext>) {
        URLContexts.forEach { ctx in
            guard let vkidService: VKIDService = ServiceLocator.shared.resolve() else {
                return
            }
            vkidService.open(url: ctx.url)
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }

}
