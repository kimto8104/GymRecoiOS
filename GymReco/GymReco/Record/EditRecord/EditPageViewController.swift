//
//  EditPageViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/04/28.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit

class EditPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        self.setupNaviTitle(title: "記録編集")
    }

}
