//
//  SceneDelegate.swift
//  GHFollowers
//
//  Created by shaimaa on 25/05/1441 AH.
//  Copyright © 1441 shaimaa. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        //MARK: STEP 1 add this func
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tabBar()
        window?.makeKeyAndVisible()
        
    }
    
    //MARK: STEP 2 CREATE NAVIGATIONCONTROOLER
    func searchNavigationVC() -> UINavigationController{
        let search = SearchVC()
        search.title = "SEARCH"
        //TAG = 0 , becouse it's the first one view in the left
        search.tabBarItem = UITabBarItem.init(tabBarSystemItem: .search, tag: 0)
        return UINavigationController.init(rootViewController: search)
    }
    func favoritesNavigationVC() ->UINavigationController{
        let favorites = FavoritesVC()
        favorites.title = "FAVORITES"
        // TAG = 1 , becouse it's the next press :)
        favorites.tabBarItem = UITabBarItem.init(tabBarSystemItem: .favorites, tag: 1)
        return UINavigationController.init(rootViewController: favorites)
    }

    
    //MARK:STEP 3 CREATE THE TABBAR AND ADDING THESE NAVIGATIONS ON AS ARRAY.
    func tabBar() -> UITabBarController{
        let tabBar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabBar.viewControllers = [searchNavigationVC(),favoritesNavigationVC()]
        
        return tabBar
    }
    

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

