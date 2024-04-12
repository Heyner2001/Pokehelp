//
//  HomeViewController.swift
//  Pokehelp
//
//  Created by General on 12/04/24.
//

import UIKit

class HomeViewController: UIViewController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.view.backgroundColor = UIColor.backgorundDefaultColor
        self.view.addSubview(CustomNavigationBar())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
