//
//  NotInterestedView.swift
//  NotInterestedDemo-Swift
//
//  Created by 白晗 on 2020/9/27.
//

import UIKit

class NotInterestedView: UIView {
    /// 背景视图
    private var backgroundView: UIView = UIView()
    /// 删除视图
    private var deleteView: UIView = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundView.frame = bounds
    }

    func show(at point: CGPoint) {
        // 获取到keyWindow
        let window = UIApplication.shared.keyWindow
        window?.addSubview(self)

        deleteView.frame = CGRect(x: point.x, y: point.y + 40, width: 0, height: 0)

        UIView.animate(withDuration: 0.3) {
            self.deleteView.frame = CGRect(x: 15, y: point.y + 40, width: UIScreen.main.bounds.width - 30, height: 200)
        }
    }
}

/// UI
extension NotInterestedView {
    // MARK: - UI

    func setupSubviews() {
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = 0.3
        addSubview(backgroundView)

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismiss))
        backgroundView.addGestureRecognizer(tapGesture)

        deleteView.backgroundColor = UIColor.orange
        addSubview(deleteView)
    }
}

/// 响应事件
extension NotInterestedView {
    // MARK: - Action
    @objc func dismiss() {
        UIView.animate(withDuration: 0.3) {
            self.deleteView.frame = CGRect(x: UIScreen.main.bounds.width - 15, y: self.deleteView.frame.origin.y, width: 0, height: 0)
        } completion: { (finished) in
            self.removeFromSuperview()
        }

    }
}
