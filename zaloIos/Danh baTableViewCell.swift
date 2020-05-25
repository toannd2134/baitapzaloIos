//
//  Danh baTableViewCell.swift
//  zaloIos
//
//  Created by Toan on 5/22/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class DanhbaTableViewCell: UITableViewCell {

    @IBOutlet weak var call: UIButton!
    @IBOutlet weak var callVieo: UIButton!
    @IBOutlet weak var nameUser: UILabel!
    @IBOutlet weak var imageUser: UIImageView!
    var nameImage = UIImage()
    var textName = String()
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imageUser.image = nameImage
        self.nameUser.text = textName
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
