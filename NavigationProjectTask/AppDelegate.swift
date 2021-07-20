//
//  AppDelegate.swift
//  NavigationProjectTask
//
//  Created by Анастасия on 19.07.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        print(#function)
        
        let tabBarController = UITabBarController()
        
        let firstViewController = FirstViewController()
        let firstNavigationController = UINavigationController(rootViewController: firstViewController)
        firstViewController.tabBarItem = UITabBarItem(title: "First", image: .checkmark, tag: 0)
        
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem = UITabBarItem(title: "Second", image: .remove, tag: 1)
        
        let thirdViewController = ThirdViewController()
        thirdViewController.tabBarItem = UITabBarItem(title: "Third", image: .add, tag: 2)
        
        let fourViewController = FourViewController()
        let fourNavigationController = UINavigationController(rootViewController: fourViewController)
        fourViewController.tabBarItem = UITabBarItem(title: "Four", image: .add, tag: 3)
        
        let fiveViewController = UIViewController()
        fiveViewController.view.backgroundColor = .systemTeal
        fiveViewController.tabBarItem = UITabBarItem(title: "Five", image: .add, tag: 4)
        
        let sixViewController = UIViewController()
        sixViewController.view.backgroundColor = .systemFill
        sixViewController.tabBarItem = UITabBarItem(title: "Six", image: .add, tag: 5)
        
        tabBarController.setViewControllers([firstNavigationController,
                                             secondViewController,
                                             thirdViewController,
                                             fourNavigationController,
                                             fiveViewController,
                                             sixViewController],
                                            animated: true)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible() // отображает окно и делает его ключевым
        
        
        return true
    }
}

