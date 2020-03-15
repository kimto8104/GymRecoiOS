//
//  HomeViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/03/08.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    /// IBOutlet
    // ナビゲーションバーボタンアイテムの宣言
    var listButton: UIBarButtonItem! // 記録画面へのボタン
    var sideMenuButton: UIBarButtonItem! // 左サイドメニューボタン
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigation()
    }
    
    // setup page
    func setUpNavigation() {
        // ナビゲーションボタンの初期化
        listButton = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(tapListButton(_ :)))
        // 左サイドメニューボタンの初期化
        sideMenuButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openSideMenu(_ :)))
        //ナビゲーションボタンの追加
        self.navigationItem.rightBarButtonItem = listButton
        self.navigationItem.leftBarButtonItem = sideMenuButton
        // ナビゲーションタイトル追加
        self.navigationItem.title = "Home"
    }
    
    
    
    @objc func tapListButton(_ sender: UIBarButtonItem) {
        // Record　ページに画面遷移させる
        let recordPageVC = RecordPageViewController()
        self.show(recordPageVC, sender: self)
        
    }
    
    @objc func openSideMenu(_ sender: UIBarButtonItem) {
        
    }
    
}
