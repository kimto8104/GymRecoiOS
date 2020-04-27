//
//  HomeViewController.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/03/08.
//  Copyright © 2020 tomo. All rights reserved.
//

import UIKit
// ホーム画面
class HomeViewController: UIViewController {
    // IBOutlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
    }
    
    
    @IBAction func tapWentGymButton(_ sender: Any) {
        // おめでとうページモーダルで表示
        let celebrateVC = CelebrateViewController()
        self.present(celebrateVC, animated: true, completion: nil)
    }
    
}
