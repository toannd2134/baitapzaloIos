//
//  CustomTabBarViewController.swift
//  zaloIos
//
//  Created by Toan on 5/22/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let messageController = UINavigationController(rootViewController: ViewController())
        messageController.tabBarItem.title = "tin nhan"
        messageController.tabBarItem.image = UIImage(named: "mess")
        let danhBaController  = UINavigationController(rootViewController: DanhbaViewController())
        danhBaController.tabBarItem.title = "Danh ba"
        danhBaController.tabBarItem.image = UIImage(named: "danhba")
        viewControllers = [messageController,danhBaController]
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
