//
//  HomeTableContentViewCell.swift
//  Pokehelp
//
//  Created by Heyner Rodriguez on 16/04/24.
//

import UIKit

class HomeTableContentViewCell: UITableViewCell {
    public static let cellId = "HomeTableContentViewCell"

    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor.backgroundPlaceholderColor
        return imageView
    }()

    private lazy var functionalityNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Dummy Title"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubviews()
        self.setUpContraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        self.addSubview(self.backgroundImageView)
        self.addSubview(self.functionalityNameLabel)
    }

    private func setUpContraints() {
        let backgroundImageViewConstraints = [
            self.backgroundImageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.backgroundImageView.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
            self.backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ]

        let functionalityNameLabelConstraints = [
            self.functionalityNameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.functionalityNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(
            backgroundImageViewConstraints +
            functionalityNameLabelConstraints
        )
    }
}
