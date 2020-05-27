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
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        setupAddButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    

    func setupAddButton() {
        if addButtonView == nil {
            let rect = getAddButtonSize()
            addButtonView = AddButtonView(frame: rect)
            addButtonView?.delegate = self
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

extension TabBarViewController: AddButtonViewDelegate{
    func didTapAddButton() {
        print("test")
    }
    
    // 記録ページで＋ボタンが押された時の処理
//    func didTapAddButton() {
//        let recordPageStoryboard: UIStoryboard = UIStoryboard(name: "AddRecordPage", bundle: nil)
//        let addRecordVC = recordPageStoryboard.instantiateViewController(withIdentifier: "AddRecordPage") as! AddRecordPageViewController
//        self.navigationController?.pushViewController(addRecordVC, animated: true)
//    }
    
    
}
