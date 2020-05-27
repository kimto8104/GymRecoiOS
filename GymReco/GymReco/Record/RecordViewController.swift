//
//  RecordViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/04/25.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit
// 記録画面
class RecordViewController: UIViewController {
    var addButtonItem: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    private var months: [String] = ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "RecordingTableViewCell", bundle: nil), forCellReuseIdentifier: "RecordingTableViewCell")
        setupNaviBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func setupNaviBar() {
        addButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(moveToAddRecordPage(_:)))
        self.navigationItem.rightBarButtonItem = addButtonItem
    }
    
    @objc func moveToAddRecordPage(_ sender: UIBarButtonItem) {
        // Stroyboard
        let addRecordStBoard = UIStoryboard(name: "AddRecordPage", bundle: nil)
        if let addRecordVC = addRecordStBoard.instantiateViewController(withIdentifier: "AddRecordPageViewController") as? AddRecordPageViewController {
            self.navigationController?.pushViewController(addRecordVC, animated: true)
        }
    }
}

extension RecordViewController: UITableViewDelegate {
    
}

extension RecordViewController: UITableViewDataSource {
    // 行の数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 31
    }
    // セル
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecordingTableViewCell", for: indexPath)
        return cell
    }
    // Headerに表示する文字列
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(months[section])"
    }
    // セクション数
    func numberOfSections(in tableView: UITableView) -> Int {
        return months.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let editStoryboard = UIStoryboard(name: "EditPageViewController", bundle: nil)
        if let editPageVC = editStoryboard.instantiateViewController(withIdentifier: "EditPageViewController") as? EditPageViewController {
            self.navigationController?.pushViewController(editPageVC, animated: true)
        }
//        if  let editPageVC = editStoryboard.instantiateViewController(identifier: "EditPageViewController") as? EditPageViewController {
//            self.navigationController?.pushViewController(editPageVC, animated: true)
//        }
        
    }
    
}
