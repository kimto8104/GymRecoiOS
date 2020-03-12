//
//  RecordPageViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/03/08.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit

class RecordPageViewController: UIViewController {
    
    // ナビゲーションバー ボタンの宣言
    var addRecordButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpRecordPage()
    }
    
    // setup page
    func setUpRecordPage() {
        addRecordButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tapAddRecordButton(_:)))
        self.navigationItem.rightBarButtonItem = addRecordButton
    }
    
    @objc func tapAddRecordButton(_ sender: UIBarButtonItem) {
        // 記録追加画面に画面遷移する
        
    }
}
