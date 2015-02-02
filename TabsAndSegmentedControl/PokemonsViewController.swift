//
//  PokemonsViewController.swift
//  TabsAndSegmentedControl
//
//  Created by Sarah Smith on 2/02/2015.
//  Copyright (c) 2015 Sarah Smith. All rights reserved.
//

import Foundation
import UIKit

class PokemonsViewController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var pokemons = [ "Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Metapod" ]

    override func viewDidLoad()
    {
        //
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("PokemonsViewController") as? UITableViewCell
        if cell == nil
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "PokemonsViewController")
        }
        if indexPath.row < pokemons.count
        {
            cell!.textLabel?.text = pokemons[indexPath.row]
        }
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return pokemons.count
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