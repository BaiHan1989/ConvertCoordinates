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
        backgroundView.frame = self.bounds
        
        deleteView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
    }
    
    func show() {
        // 获取到keyWindow
        let window = UIApplication.shared.keyWindow
        window?.addSubview(self)
    }

}


extension NotInterestedView {
    // MARK: - UI
    func setupSubviews() {
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = 0.5
        addSubview(backgroundView)
        
        deleteView.backgroundColor = UIColor.orange
        addSubview(deleteView)
    }
}
