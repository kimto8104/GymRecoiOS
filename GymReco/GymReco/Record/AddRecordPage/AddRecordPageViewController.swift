//
//  AddRecordPageViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/05/16.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit
// 記録追加画面
class AddRecordPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // 保存するボタンセット
    func setupNaviRightItem(title: String) {
        let rightNaviItem = UIBarButtonItem(title: title, style: .plain, target: self, action: #selector(tapSaveButton(_:)))
        self.navigationItem.rightBarButtonItem = rightNaviItem
    }
    
    // 保存するボタンタップ
    @objc func tapSaveButton(_ sender: AnyObject) {
        print("saved")
    }
}
