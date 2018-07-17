//
//  CustomTableViewCell.swift
//  NavigationLecture3
//
//  Created by Vlad Krupenko on 18.07.2018.
//  Copyright © 2018 Vlad Krupenko. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    // MARK: - IBOutlest

    @IBOutlet fileprivate weak var customCellLabel: UILabel!

    // MARK: - UITableViewCell

    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }

    // MARK: - Internal methods

    func configure(title: String) {
        customCellLabel.text = title
    }

}

// MARK: - Configure

private extension CustomTableViewCell {

    func configureUI() {
        selectionStyle = .none
        customCellLabel.font = UIFont.systemFont(ofSize: 15.0, weight: .medium)
        backgroundColor = .random
    }

}

// MARK: - CGFloat

extension CGFloat {

    static var random: CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }

}

// MARK: - UIColor

extension UIColor {

    static var random: UIColor {
        return UIColor(red: .random, green: .random, blue: .random, alpha: 1.0)
    }

}
