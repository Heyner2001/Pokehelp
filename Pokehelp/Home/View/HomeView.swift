//
//  HomeView.swift
//  Pokehelp
//
//  Created by Heyner Rodriguez on 16/04/24.
//

import UIKit

class HomeView: UIView {
    private lazy var ilusrtrationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.backgroundPlaceholderColor
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.backgroundColor = UIColor.clear
        self.translatesAutoresizingMaskIntoConstraints = false

        self.addSubViews()
        self.setUpConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubViews() {
        self.addSubview(self.ilusrtrationImageView)
    }

    private func setUpConstraints() {
        let ilusrtrationImageViewConstraints = [
            self.ilusrtrationImageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.ilusrtrationImageView.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.ilusrtrationImageView.topAnchor.constraint(equalTo: self.topAnchor),
            self.ilusrtrationImageView.heightAnchor.constraint(equalToConstant: 200)
        ]

        NSLayoutConstraint.activate(
            ilusrtrationImageViewConstraints        )
    }
}
