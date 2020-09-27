//
//  NotInterestedCell.swift
//  NotInterestedDemo-Swift
//
//  Created by 白晗 on 2020/9/26.
//

import UIKit


protocol NotInterestedCellDelegate: NSObjectProtocol {
    func notInterestedCellDeleteButtonClick(_ cell: NotInterestedCell, _ deleteButton: UIButton)
}

extension NotInterestedCellDelegate {
    func notInterestedCellDeleteButtonClick(_ cell: NotInterestedCell, _ deleteButton: UIButton) {
        
    }
}


class NotInterestedCell: UITableViewCell {
    /// 代理属性
    weak var delegate: NotInterestedCellDelegate?
    var deleteButton: UIButton = UIButton()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubviews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        deleteButton.frame = CGRect(x: contentView.bounds.width - 15 - 30, y: contentView.bounds.height - 15 - 20, width: 30, height: 20)
    }
    
}

extension NotInterestedCell {
    // MARK: - 设置UI
    func setupSubviews() {
        deleteButton.addTarget(self, action: #selector(deleteButtonClick(deleteButton:)), for: .touchUpInside)
        deleteButton.layer.cornerRadius = 10
        deleteButton.layer.masksToBounds = true
        deleteButton.layer.borderWidth = 2
        deleteButton.layer.borderColor = UIColor.lightGray.cgColor
        deleteButton.setTitle("X", for: .normal)
        deleteButton.setTitleColor(UIColor.lightGray, for: .normal)
        contentView.addSubview(deleteButton)
    }
}

extension NotInterestedCell {
    // MARK: - Actions
    @objc func deleteButtonClick(deleteButton: UIButton) {
        print("deleteButtonClick")
        delegate?.notInterestedCellDeleteButtonClick(self, deleteButton)
    }
}
