//
//  TableViewController.swift
//  NavigationLecture3
//
//  Created by Vlad Krupenko on 18.07.2018.
//  Copyright © 2018 Vlad Krupenko. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet fileprivate weak var tableView: UITableView!

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

// MARK: - Configure

private extension TableViewController {

    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }

}

// MARK: - UITableViewDataSource

private extension TableViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    }

}

// MARK: - UITableViewDelegate

private extension TableViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

}
