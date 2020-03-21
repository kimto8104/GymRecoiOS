//
//  RecordPageViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/03/08.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit
// 記録ページ
class RecordPageViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    // ナビゲーションバー ボタンの宣言
    var addRecordButton: UIBarButtonItem!
    private let monthSection: Array = ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月","12月"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "DayRecordTableViewCell", bundle: nil), forCellReuseIdentifier: "DayRecordCell")
        setUpRecordPage()
    }
    
    // setup page
    func setUpRecordPage() {
        addRecordButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tapAddRecordButton(_:)))
        self.navigationItem.rightBarButtonItem = addRecordButton
         self.navigationItem.title = "記録"
    }
    
    @objc func tapAddRecordButton(_ sender: UIBarButtonItem) {
        // 記録追加画面に画面遷移する
        
    }
}

extension RecordPageViewController: UITableViewDelegate {
    
}

extension RecordPageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dayRecordCell = tableView.dequeueReusableCell(withIdentifier: "DayRecordCell", for: indexPath)
        return dayRecordCell
    }
    
    // セクション数
    func numberOfSections(in tableView: UITableView) -> Int {
        return monthSection.count
    }
    // ヘッダーセクションの文言
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return monthSection[section] as? String
    }
    
    // 各セルタップアクション
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let editRecordVC = EditRecordPageViewController()
        self.show(editRecordVC, sender: self)
    }
    
    
    
    
    
    
}
