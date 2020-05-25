//
//  DanhbaViewController.swift
//  zaloIos
//
//  Created by Toan on 5/22/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class DanhbaViewController: UIViewController {
 var user = creatData()
    var nameSection : [Character] = []
    @IBOutlet weak var DanhBaTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        DanhBaTable.delegate = self
        DanhBaTable.dataSource = self
       navigationBar()
        DanhBaTable.register(DanhbaTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func navigationBar(){
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
               self.view.backgroundColor = .white// Do any additional setup after loading the view.
    }

   

}
extension DanhbaViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        for i in 0..<user.count-1 {
//  
            nameSection.append( user[i].key)
    }
        return nameSection.count
//
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(nameSection[section])
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DanhbaTableViewCell
        
            
        if nameSection[indexPath.row] == user[indexPath.row].key{
                cell.nameImage = user[indexPath.row].image
                 cell.textLabel?.text = user[indexPath.row].name
        }
        
      
        
        return cell
    }
    
    
}
