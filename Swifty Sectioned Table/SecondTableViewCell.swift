//
//  SecondTableViewCell.swift
//  Swifty Sectioned Table
//
//  Created by Zac Wolff on 5/15/15.
//  Copyright (c) 2015 GH4HUB Ghana Limited. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell
{

    @IBOutlet var secondTitleLabel: UILabel?
    @IBOutlet var secondSubTitleLabel: UILabel?
    @IBOutlet var secondThumbnailImageView: UIImageView?
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
