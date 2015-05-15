//
//  ViewController.swift
//  Swifty Sectioned Table
//
//  Created by Zac Wolff on 5/15/15.
//  Copyright (c) 2015 GH4HUB Ghana Limited. All rights reserved.
//

import UIKit

class ViewController: UITableViewController
{
    struct transfer
    {
        let title: String
        let thumbnails: String
        let subtitle: String
    }

    struct secondTransfer
    {
        let title: String
        let thumbnails: String
    }

    var transfers = [transfer]()

    var secondTransfers = [secondTransfer]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        initializeTransferTypes()
        secondInitializeTransferTypes()

    }

    func initializeTransferTypes()
    {
        self.transfers = [
            transfer(title: "Red", thumbnails: "red.png", subtitle: "One"),
            transfer(title: "Gold", thumbnails: "yellow.png", subtitle: "Two"),
            transfer(title: "Green", thumbnails: "green.png", subtitle: "Three")]
    }


    func secondInitializeTransferTypes()
    {
        self.secondTransfers = [
            secondTransfer(title: "Red", thumbnails: "red.png"),
            secondTransfer(title: "Gold", thumbnails: "yellow.png")]
    }
    
override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return transfers.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        if indexPath.section == 0
        {
            
        let identifier: String = "firstTableCell"
        
        var cell:FirstTableViewCell = tableView.dequeueReusableCellWithIdentifier(identifier) as! FirstTableViewCell
        
        cell.titleLabel!.text = transfers[indexPath.row].title
        cell.thumbnailImageView!.image = UIImage(named:transfers[indexPath.row].thumbnails)
        cell.subTitleLabel!.text = transfers[indexPath.row].subtitle
        
        return cell
        }
        else
        {
            let identifiers: String = "secondTableCell"
            
            var cell2:SecondTableViewCell = tableView.dequeueReusableCellWithIdentifier(identifiers) as! SecondTableViewCell
            
            cell2.secondTitleLabel!.text = secondTransfers[indexPath.row].title
            cell2.secondThumbnailImageView!.image = UIImage(named:secondTransfers[indexPath.row].thumbnails)
            //cell2.secondSubTitleLabel!.text = transfers[indexPath.row].subtitle
            
            return cell2
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 58.0
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

