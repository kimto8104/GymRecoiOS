//
//  HomeViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/03/08.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // ナビゲーションバーボタンアイテムの宣言
    var listButton: UIBarButtonItem! // 記録画面へのボタン
    var sideMenuButton: UIBarButtonItem! // 左サイドメニューボタン
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    // setup page
    func setUp() {
        // ナビゲーションボタンの初期化
        listButton = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(tapListButton(_ :)))
        // 左サイドメニューボタンの初期化
        sideMenuButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tapListButton(_ :)))
        //ナビゲーションボタンの追加
        self.navigationItem.rightBarButtonItem = listButton
        self.navigationItem.leftBarButtonItem = sideMenuButton
        
    }
        
    @objc func tapListButton(_ sender: UIBarButtonItem) {
        // Record　ページに画面遷移させる
        let recordPageVC = RecordPageViewController()
        self.show(recordPageVC, sender: self)
        
    }

}
