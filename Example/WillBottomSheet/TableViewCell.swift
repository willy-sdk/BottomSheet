//
//  TableViewCell.swift
//  WillBottomSheet_Example
//
//  Created by Kowit Nanumchil on 9/12/2563 BE.
//  Copyright © 2563 CocoaPods. All rights reserved.
//

import UIKit

final class TableViewCell: UITableViewCell {
    static let cellIdentifier = "TableViewCell"
    lazy var newImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 100, height: 100)))
        imageView.autoresizingMask = UIView.AutoresizingMask()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    lazy var newTitleLabel: UILabel = {
        let titleLabel = UILabel(frame: CGRect(x: 110, y: 0, width: 200, height: 100))
        titleLabel.autoresizingMask = UIView.AutoresizingMask()
        titleLabel.clipsToBounds = true
        return titleLabel
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    fileprivate func configure() {
        contentView.addSubview(newImageView)
        contentView.addSubview(newTitleLabel)
        selectionStyle = .none
    }
}
