//
//  TableViewCell.swift
//  Swifty Sectioned Table
//
//  Created by Zac Wolff on 5/15/15.
//  Copyright (c) 2015 GH4HUB Ghana Limited. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell
{
    @IBOutlet var titleLabel: UILabel?
    @IBOutlet var subTitleLabel: UILabel?
    @IBOutlet var thumbnailImageView: UIImageView?
    

    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }

}
