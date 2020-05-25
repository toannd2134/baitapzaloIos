//
//  Data.swift
//  zaloIos
//
//  Created by Toan on 5/21/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import Foundation
import UIKit
struct User  {
    var Name : String
    var image : UIImage?
    var loading : String
    var mess  : String
    init(Name :String,image:UIImage?,loading:String,mess:String) {
        self.Name = Name
        self.image = image
        self.loading = loading
        self.mess = mess
    }
 }
func Data () -> [User] {
    let user1 = User(Name: "thực tập di động 4 ", image: UIImage(named: "selfe")  , loading: "7 giờ", mess: "thuý techmaster Được thêm vào")
    let user2 = User(Name: "UX tối. 3 - 5", image: UIImage(named: "selfe") , loading: "3 ngày ", mess: "yến  @All lớp mình...")
    let user3 = User(Name: "Hỏi bài lớp di động", image: UIImage(named: "selfe") , loading: "5 giờ ", mess: "Mn có ai tham gia nhóm...")
    let user4 = User(Name: "Zalo hỗ trợ", image: UIImage(named: "selfe") , loading: "1 ngày ", mess: "cập nhật phiên bản zalo v20...")
    let user5 = User(Name: "Huy start", image: UIImage(named: "selfe") , loading: "2 ngày ", mess: "không đc tôi phải lên 8 9 ")
    let user6 = User(Name: "Huy lê ", image: UIImage(named: "selfe") , loading: "41/3", mess: "làm chưa ông")

    return[user1,user2,user3,user4,user5,user6]
}
