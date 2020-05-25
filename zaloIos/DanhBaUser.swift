//
//  DanhBaUser.swift
//  zaloIos
//
//  Created by Toan on 5/22/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import Foundation
import UIKit



struct Danhba {
    var name : String!
    var image : UIImage!
    var key : Character 
    init(  name :String , Image : UIImage!) {
        self.name = name
        self.image = Image
        var CharaterName : [Character] = []
        for i in self.name{
            CharaterName.append(i)
        }
        key = CharaterName[0]
        
    }
}

func creatData() -> [Danhba] {
    let user1 = Danhba(name: "Bố", Image: UIImage(named: "selfe"))
    let user2 = Danhba(name: "Mẹ", Image: UIImage(named: "selfe"))
    let user3 = Danhba(name: "Huy Lê", Image: UIImage(named: "selfe"))
    let user4 = Danhba(name: "Huy start ", Image: UIImage(named: "selfe"))
    let user5 = Danhba(name: "Kiệt MK", Image: UIImage(named: "selfe"))
    let user6 = Danhba(name: "KillHD", Image: UIImage(named: "selfe"))
    let user7 = Danhba(name: "Linh Hưng", Image: UIImage(named: "selfe"))
    let user8 = Danhba(name: "Nam Lê", Image: UIImage(named: "selfe"))
    let user9 = Danhba(name: "Ngọc Đức", Image: UIImage(named: "selfe"))
    let user10 = Danhba(name: "Phương", Image: UIImage(named: "selfe"))
    let user11 = Danhba(name: "Phương Anh", Image: UIImage(named: "selfe"))
    let user12 = Danhba(name: "Tào Thuý Quỳnh", Image: UIImage(named: "selfe"))
    let user13 = Danhba(name: "th2205", Image: UIImage(named: "selfe"))
    let user14 = Danhba(name: "Zalo", Image: UIImage(named: "selfe"))
    let user15 = Danhba(name: "097792315", Image: UIImage(named: "selfe"))
    
    return [user1,user2,user3,user4,user5,user6,user7,user8,user9,user10,user11,user12,user13,user14,user15]
    
    
}


