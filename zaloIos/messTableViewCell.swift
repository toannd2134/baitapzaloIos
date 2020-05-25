//
//  messTableViewCell.swift
//  zaloIos
//
//  Created by Toan on 5/21/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class messTableViewCell: UITableViewCell {

    @IBOutlet weak var imageproFile: UIImageView!
    
    @IBOutlet weak var nameProfile: UILabel!
    
    @IBOutlet weak var loading: UILabel!
    
    @IBOutlet weak var viewImage: UIView!
    @IBOutlet weak var mess: UILabel!
    let imagev : UIImage! = nil
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imageproFile.image = imagev
        
//        self.viewImage?.layer.cornerRadius = viewImage.frame.width/2
        print(viewImage.frame.width/2 )
                
        mess.textColor = .lightGray
        
     
    }
    
}
