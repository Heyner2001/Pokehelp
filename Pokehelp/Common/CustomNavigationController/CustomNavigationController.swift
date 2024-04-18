//
//  CustomNavigationController.swift
//  Pokehelp
//
//  Created by Heyner Rodriguez on 17/04/24.
//

import UIKit

class CustomNavigationController: UINavigationController {
    private let customNavigationBar = CustomNavigationBar()
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        self.setNavigationBarHidden(false, animated: false)

        self.addSubviews()
//        self.setUpConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        self.navigationBar.addSubview(self.customNavigationBar)
        self.navigationBar.bringSubviewToFront(self.customNavigationBar)
    }
    
//    private func setUpConstraints() {
//        let customNavigationBarConstraints = [
//            self.customNavigationBar.leftAnchor.constraint(equalTo: self.navigationBar.leftAnchor),
//            self.customNavigationBar.rightAnchor.constraint(equalTo: self.navigationBar.rightAnchor),
//            self.customNavigationBar.topAnchor.constraint(equalTo: self.navigationBar.topAnchor),
//            self.customNavigationBar.heightAnchor.constraint(
//                equalToConstant: CustomNavigationBar.customNavigationBarHeight
//            )
//        ]
//        
//        NSLayoutConstraint.activate(
//            customNavigationBarConstraints
//        )
//    }
}
