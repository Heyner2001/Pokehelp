//
//  CustomTabBar.swift
//  Pokehelp
//
//  Created by Heyner Rodriguez on 18/04/24.
//

import UIKit

class CustomTabBar: UITabBarController {
    private lazy var navigationBar = CustomNavigationBar()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpTabItems()
        self.addSubviews()
        self.setUpStyle()
    }

    private func setUpTabItems() {
        let homeViewController = self.createNav(
            with: "Home",
            and: UIImage(systemName: "house"),
            viewController: HomeViewController()
        )
        
        let viewController = self.createNav(
            with: "other",
            and: UIImage(systemName: "plus.magnifyingglass"),
            viewController: UIViewController()
        )
        self.setViewControllers([homeViewController, viewController], animated: true)
    }

    private func createNav(
        with title: String,
        and image: UIImage?,
        viewController: UIViewController
    ) -> UINavigationController {
        let navigation = UINavigationController(rootViewController: viewController)

        navigation.tabBarItem.title = title
        navigation.tabBarItem.image = image
        
        return navigation
    }

    private func addSubviews() {
        self.view.addSubview(self.navigationBar)
    }
    
    private func setUpStyle() {
        self.tabBar.barTintColor = UIColor.backgorundDefaultColor
        self.tabBar.tintColor = UIColor.defaultRedColor
    }
}
