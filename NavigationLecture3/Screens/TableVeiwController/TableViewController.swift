//
//  TableViewController.swift
//  NavigationLecture3
//
//  Created by Vlad Krupenko on 18.07.2018.
//  Copyright © 2018 Vlad Krupenko. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    // MARK: - Constants

    fileprivate struct Constants {
        static let customCellIdentifier = "customCell"
    }

    // MARK: - IBOutlets

    @IBOutlet fileprivate weak var tableView: UITableView!

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }

}

// MARK: - Configure

private extension TableViewController {

    func configureTableView() {
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: Constants.customCellIdentifier)
    }

}

// MARK: - UITableViewDataSource

extension TableViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let customCell = tableView.dequeueReusableCell(withIdentifier: Constants.customCellIdentifier) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        customCell.configure(title: indexPath.description)
        return customCell
    }

}

// MARK: - UITableViewDelegate

extension TableViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = SecondTestController()
        navigationController?.pushViewController(secondVC, animated: true)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }

}
