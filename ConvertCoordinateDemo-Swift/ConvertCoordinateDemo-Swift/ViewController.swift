//
//  ViewController.swift
//  ConvertCoordinateDemo-Swift
//
//  Created by 白晗 on 2020/9/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let redView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
        
        let greenView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        greenView.backgroundColor = UIColor.green
        redView.addSubview(greenView)
        
        let newRect = redView.convert(greenView.frame, to: view)
        
        print(newRect)
        
        // 相关的说明在OC项目中
    }


}

