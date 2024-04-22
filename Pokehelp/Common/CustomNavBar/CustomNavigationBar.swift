//
//  CustomNavigationBar.swift
//  Pokehelp
//
//  Created by General on 12/04/24.
//

import UIKit

class CustomNavigationBar: UINavigationBar {
    private static let notchHeight: Double = {
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let window = scene?.windows.first
        return Double(window?.safeAreaInsets.top ?? 0)
    }()
    
    private static let customNavigationBarHeight = 80.0
    public static let safeAreaTopInset: Double = {
        return CustomNavigationBar.notchHeight + CustomNavigationBar.customNavigationBarHeight
    }()

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
        label.text = "PokeHelp"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame:
                    CGRect(
                        x: 0,
                        y: Self.notchHeight,
                        width: UIScreen.main.bounds.width,
                        height: Self.customNavigationBarHeight
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
            self.contentImageView.centerYAnchor.constraint(equalTo: self.navBarContainer.centerYAnchor),
            self.contentImageView.widthAnchor.constraint(equalToConstant: navBarHeight),
            self.contentImageView.heightAnchor.constraint(equalToConstant: navBarHeight)
        ]

        let customTitleLabelConstraints = [
            self.customTitleLabel.centerXAnchor.constraint(equalTo: self.navBarContainer.centerXAnchor),
            self.customTitleLabel.centerYAnchor.constraint(equalTo: self.navBarContainer.centerYAnchor)
        ]

        NSLayoutConstraint.activate(
            contentImageViewConstraints +
            navBarContainerConstrains +
            customTitleLabelConstraints
        )
    }
}
