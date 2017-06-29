//
//  Headerview.swift
//  Headerview2
//
//  Created by HGPMAC58 on 6/28/17.
//  Copyright © 2017 HGPMAC58. All rights reserved.
//

import UIKit


class Headerview: UITableViewCell {
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
