//
//  ViewController.swift
//  NotInterestedDemo-Swift
//
//  Created by 白晗 on 2020/9/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, NotInterestedCellDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        let tableView = UITableView(frame: view.bounds)
        tableView.rowHeight = 200
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(NotInterestedCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NotInterestedCell

        cell.delegate = self

        return cell
    }

    func notInterestedCellDeleteButtonClick(_ cell: NotInterestedCell, _ deleteButton: UIButton) {
        
        // 获取不感兴趣按钮的位置
        let point = cell.convert(deleteButton.frame.origin, to: nil)
        
        // 创建不感兴趣视图
        let notInterestedView = NotInterestedView(frame: view.bounds)
        notInterestedView.show(at: point)
    }
}
