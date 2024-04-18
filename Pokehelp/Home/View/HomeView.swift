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

    private lazy var tableContent: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor.backgroundPlaceholderColor
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(HomeTableContentViewCell.self, forCellReuseIdentifier: HomeTableContentViewCell.cellId)
        return tableView
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
        self.addSubview(self.tableContent)
    }

    private func setUpConstraints() {
        let ilusrtrationImageViewConstraints = [
            self.ilusrtrationImageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.ilusrtrationImageView.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.ilusrtrationImageView.topAnchor.constraint(equalTo: self.topAnchor),
            self.ilusrtrationImageView.heightAnchor.constraint(equalToConstant: 200)
        ]

        let tableContentConstraints = [
            self.tableContent.topAnchor.constraint(
                equalTo: self.ilusrtrationImageView.bottomAnchor,
                constant: 16
            ),
            self.tableContent.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            self.tableContent.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            self.tableContent.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -38)
        ]
        NSLayoutConstraint.activate(
            ilusrtrationImageViewConstraints +
            tableContentConstraints
        )
    }
}

extension HomeView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableContentViewCell.cellId, for: indexPath)
        guard let homeTableContentViewCell = cell as? HomeTableContentViewCell else {
            return UITableViewCell()
        }

        return homeTableContentViewCell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
