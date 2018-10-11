//
//  AttivitaTableViewCell.swift
//  FTime
//
//  Created by ranaldogiovanni on 11/10/18.
//  Copyright © 2018 ranaldogiovanni. All rights reserved.
//

import UIKit

class AttivitaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelAttivita: UILabel!
    @IBOutlet weak var imageAttivita: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
