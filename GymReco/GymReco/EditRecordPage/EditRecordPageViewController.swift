//
//  EditRecordPageViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/03/15.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit

class EditRecordPageViewController: UIViewController {
    
    @IBOutlet weak var editRecordTableView: UITableView!
    var saveButton: UIBarButtonItem!
    private let monthSection: Array = ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月","12月"]
    override func viewDidLoad() {
        super.viewDidLoad()
        editRecordTableView.dataSource = self
        editRecordTableView.delegate = self
        editRecordTableView.register(UINib(nibName: "EditRecordTableViewCell", bundle: nil), forCellReuseIdentifier: "EditRecordTableViewCell")
        setupEditRecordPage()
    }
    
    func setupEditRecordPage() {
        saveButton = UIBarButtonItem(title: "保存", style: .done, target: self, action: #selector(tapSaveButton(_:)))
        self.navigationItem.rightBarButtonItem = saveButton
        self.navigationItem.title = "記録を編集する"
    }
    
    @objc func tapSaveButton(_ sender: UIBarButtonItem) {
        // 保存してHome画面に遷移
    }

}

extension EditRecordPageViewController: UITableViewDelegate {
    
}

// table extension

extension EditRecordPageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EditRecordTableViewCell", for: indexPath)
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return monthSection.count
    }
    
    // ヘッダーセクションの文言
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return monthSection[section] as? String
    }
    
    
    
}
