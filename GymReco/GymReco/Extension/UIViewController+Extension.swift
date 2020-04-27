//
//  UIViewController+Extension.swift
//  GymReco
//
//  Created by Tomofumi Kimura on 2020/04/27.
//  Copyright © 2020 tomo. All rights reserved.
//

import Foundation
import UIKit
import SideMenu
extension UIViewController {
    
    
    func setupNavigationBar() {
        let leftSettingButton = UIBarButtonItem(image: UIImage(named: "Menu")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), style: .done, target: self, action: #selector(tapMenuButton(_:)))
        self.navigationItem.leftBarButtonItem = leftSettingButton
    }
    
    func setupNaviTitle(title: String) {
        self.navigationItem.title = title
    }
    // サイドメニュータップ
    @objc func tapMenuButton(_ sender: AnyObject) {
        let sideMenuStoryboard = UIStoryboard(name: "SideMenu", bundle: nil)
        let sideMenu = sideMenuStoryboard.instantiateViewController(identifier: "SideMenu") as! SideMenuNavigationController
        // サイドメニュー表示
        self.present(sideMenu, animated: true, completion: nil)
        
    }
}
