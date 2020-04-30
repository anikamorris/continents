//
//  TabBarController.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/17/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    func setupViewControllers() {
        var vcArray = [UIViewController]()
        let images = ["northAmerica", "southAmerica", "europe", "asia", "africa", "australia"]
        let titles = ["North America", "South America", "Europe", "Asia", "Africa", "Australia"]
        let colors:[UIColor] = [.cyan, .systemPink, .systemBlue, .systemOrange, .systemIndigo, .green ]
        
        for i in 0..<images.count {
            let vc = ContinentVC()
            vc.imageName = images[i]
            vc.title = titles[i]
            vc.view.backgroundColor = colors[i]
            let navController = UINavigationController(rootViewController: vc)
            vc.tabBarItem = UITabBarItem(title: vc.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
            vc.tabBarItem.badgeValue = "1"
            self.tabBar.barTintColor = .black
            self.tabBar.tintColor = .systemPink
            vcArray.append(navController)
        }
        
        viewControllers = vcArray
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected")
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        item.badgeValue = nil
    }
}
