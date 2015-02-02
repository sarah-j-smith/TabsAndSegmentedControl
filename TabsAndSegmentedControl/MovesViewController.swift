//
//  MovesViewController.swift
//  TabsAndSegmentedControl
//
//  Created by Sarah Smith on 2/02/2015.
//  Copyright (c) 2015 Sarah Smith. All rights reserved.
//

import Foundation
import UIKit

class MovesViewController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    let moves = [ "Acid", "Agility", "Stomp", "Whomp" ]
    

    override func viewDidLoad() {
        //
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("MovesViewController") as? UITableViewCell
        if cell == nil
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "MovesViewController")
        }
        if indexPath.row < moves.count
        {
            cell!.textLabel?.text = moves[indexPath.row]
        }
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return moves.count
        }
        return 0
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle,
        forRowAtIndexPath indexPath: NSIndexPath)
    {
        //
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
    {
        return UITableViewCellEditingStyle.None
    }
}