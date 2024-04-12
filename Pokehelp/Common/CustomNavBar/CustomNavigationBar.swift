//
//  CustomNavigationBar.swift
//  Pokehelp
//
//  Created by General on 12/04/24.
//

import UIKit

class CustomNavigationBar: UINavigationBar {
    private var leftPokeballDummy: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 30
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame:
                    CGRect(
                        x: 0,
                        y: 0,
                        width: UIScreen.main.bounds.width,
                        height: 120
                    )
        )
        
        self.backgroundColor = UIColor.clear
        
        self.addSubViews()
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews() {
        self.addSubview(self.leftPokeballDummy)
    }
    
    private func setUpConstraints() {
        self.leftPokeballDummy.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPokeballDummyConstraints = [
            leftPokeballDummy.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            leftPokeballDummy.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            leftPokeballDummy.widthAnchor.constraint(equalToConstant: 60),
            leftPokeballDummy.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        NSLayoutConstraint.activate(leftPokeballDummyConstraints)
        
    }
}
