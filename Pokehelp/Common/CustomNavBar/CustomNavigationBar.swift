//
//  CustomNavigationBar.swift
//  Pokehelp
//
//  Created by General on 12/04/24.
//

import UIKit

class CustomNavigationBar: UINavigationBar {
    private lazy var navBarContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.defaultRedColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var contentImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "basicPokeball"))
        imageView.backgroundColor = UIColor.clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var customTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Dummy Title"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var dynamicButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        let dummyIcon = UIImage(systemName: "arrow.left")
        button.setImage(dummyIcon, for: .normal)
        button.tintColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
        return button
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
        self.clipsToBounds = false

        self.addSubViews()
        self.setUpConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubViews() {
        self.addSubview(self.navBarContainer)
        
        self.navBarContainer.addSubview(self.contentImageView)
        self.navBarContainer.addSubview(self.customTitleLabel)
        self.navBarContainer.addSubview(self.dynamicButton)
    }

    private func setUpConstraints() {
        let navBarHeight = self.bounds.height
        let navBarContainerHeight = navBarHeight * 0.75
        let navBarContainerConstrains = [
            self.navBarContainer.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.navBarContainer.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.navBarContainer.topAnchor.constraint(equalTo: self.topAnchor),
            self.navBarContainer.heightAnchor.constraint(equalToConstant: navBarContainerHeight)
        ]

        let contentImageViewConstraints = [
            self.contentImageView.leftAnchor.constraint(
                equalTo: self.navBarContainer.leftAnchor,
                constant: navBarHeight * -0.18),
            self.contentImageView.centerYAnchor.constraint(
                equalTo: self.navBarContainer.centerYAnchor,
                constant: navBarContainerHeight / 4),
            self.contentImageView.widthAnchor.constraint(equalToConstant: navBarHeight),
            self.contentImageView.heightAnchor.constraint(equalToConstant: navBarHeight)
        ]

        let customTitleLabelConstraints = [
            self.customTitleLabel.centerXAnchor.constraint(equalTo: self.navBarContainer.centerXAnchor),
            self.customTitleLabel.centerYAnchor.constraint(
                equalTo: self.navBarContainer.centerYAnchor,
                constant: navBarContainerHeight / 4)
        ]
        
        let dynamicButtonConstrains = [
            self.dynamicButton.centerXAnchor.constraint(equalTo: self.contentImageView.centerXAnchor),
            self.dynamicButton.centerYAnchor.constraint(equalTo: self.contentImageView.centerYAnchor),
            self.dynamicButton.heightAnchor.constraint(equalToConstant: navBarHeight / 3),
            self.dynamicButton.widthAnchor.constraint(equalToConstant: navBarHeight / 3)
        ]
        
        NSLayoutConstraint.activate(
            contentImageViewConstraints +
            navBarContainerConstrains +
            customTitleLabelConstraints +
            dynamicButtonConstrains
        )
    }

    @objc private func buttonAction() {
        print("Button has taped")
    }
}
