//
//  EventiTableViewCell.swift
//  FTime
//
//  Created by ranaldogiovanni on 11/10/18.
//  Copyright © 2018 ranaldogiovanni. All rights reserved.
//

import UIKit

class EventiTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelType: UILabel!
    @IBOutlet weak var labelHour: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
