//
//  HomeViewController.swift
//  Pokehelp
//
//  Created by General on 12/04/24.
//

import UIKit

class HomeViewController: UIViewController {
    private lazy var homeView = HomeView()

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.view.backgroundColor = UIColor.backgorundDefaultColor
        
        self.addSubviews()
        self.setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        self.view.addSubview(self.homeView)
    }

    private func setUpContraints() {
        let homeViewContraints = [
            self.homeView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.homeView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.homeView.topAnchor.constraint(
                equalTo: self.view.topAnchor,
                constant: CustomNavigationBar.safeAreaTopInset
            ),
            self.homeView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ]

        NSLayoutConstraint.activate(
            homeViewContraints
        )
    }
}
