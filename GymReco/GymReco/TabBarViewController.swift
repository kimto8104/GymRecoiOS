//
//  TabBarViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/04/25.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    public var addButtonView: AddButtonView?
    var topSafeAreaHeight: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupAddButton()
    }
    

    func setupAddButton() {
        if addButtonView == nil {
            let rect = getAddButtonSize()
            addButtonView = AddButtonView(frame: rect)
            addButtonView?.layer.masksToBounds = true
            addButtonView?.layer.cornerRadius = 25
            view.addSubview(addButtonView!)
        }
    }
    
    func getAddButtonSize() -> CGRect {
        var addButtonPostionY: CGFloat
        // スクリーンサイズ
        let screenSize = UIScreen.main.bounds.size
        // Margin
        let margin: CGSize = CGSize(width: 15, height: 15)
        let buttonSize: CGFloat = 50
        // Tabの高さ
        let tabHeight = self.tabBar.frame.size.height
        // SafeAreaの高さ
        topSafeAreaHeight = self.view.safeAreaInsets.bottom
        print("TopSafeAreaHeight: \(topSafeAreaHeight)")
        print("TabHeight: \(tabHeight)")
        if topSafeAreaHeight != 0.0 {
            // ホームボタンがあるiPhone
            addButtonPostionY = screenSize.height - (buttonSize + tabHeight + topSafeAreaHeight)
        } else {
            // x系
            addButtonPostionY = screenSize.height - (buttonSize + tabHeight + margin.height + topSafeAreaHeight)
        }
        
        print("AddButtonView: \(addButtonPostionY)")
        let addButtonRect = CGRect(x: screenSize.width - (buttonSize + margin.width), y: addButtonPostionY, width: buttonSize, height: buttonSize)
        
        return addButtonRect
    }

}
