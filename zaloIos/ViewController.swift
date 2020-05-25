//
//  ViewController.swift
//  zaloIos
//
//  Created by Toan on 5/21/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let user = Data()
    var table = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table)
        self.table.delegate = self
        self.table.dataSource = self
        self.table.register(UINib(nibName: "messTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        table.tableFooterView = UIView()
        table.separatorStyle = .singleLine
        table.backgroundColor = .gray
   setupNavigatiobar()
    layouttable()
}
    func layouttable(){
        table.translatesAutoresizingMaskIntoConstraints = false
        table.topAnchor.constraint(equalTo: self.view.topAnchor , constant: 0).isActive = true
        table.leadingAnchor.constraint(equalTo: self.view.leadingAnchor , constant: 0).isActive = true
        table.trailingAnchor.constraint(equalTo: self.view.trailingAnchor , constant: 0).isActive = true
        table.bottomAnchor.constraint(equalTo: self.view.bottomAnchor , constant: 0).isActive = true
    }
    func setupNavigatiobar(){
        let seachbutton = UIButton(type: .system)
               seachbutton.setImage(UIImage(named: "seach"), for: .normal)
               let addButton = UIButton(type: .system)
               addButton.setImage(UIImage(named: "add"), for: .normal)
               let addMessButton = UIButton(type: .system)
               addMessButton.setImage(UIImage(named: "addmess"), for: .normal)
               let label = UILabel()
               self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.10, green: 0.55, blue: 1.00, alpha: 1.00)
               label.textColor = .white
               label.textAlignment = .left
               label.text = "Tìm bạn bè và tin nhắn.."
             
               self.navigationItem.leftBarButtonItems = [ UIBarButtonItem(customView: seachbutton),UIBarButtonItem(customView: label)]
               self.navigationItem.rightBarButtonItems = [ UIBarButtonItem(customView: addButton),UIBarButtonItem(customView: addMessButton)]
               self.view.backgroundColor = .white
    }
}
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! messTableViewCell
        cell.nameProfile.text = user[indexPath.row].Name
        cell.imageproFile.image = user[indexPath.row].image
        cell.loading.text = user[indexPath.row].loading
        cell.mess.text  = user[indexPath.row].mess
         return cell
        
    }
    
    
}
