//
//  FirstViewController.swift
//  TabsAndSegmentedControl
//
//  Created by Sarah Smith on 2/02/2015.
//  Copyright (c) 2015 Sarah Smith. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    let pokemonsController = PokemonsViewController(nibName: "PokemonsTableView", bundle: nil)
    let movesController = MovesViewController(nibName: "MovesTableView", bundle: nil)
    let abilitiesController = AbilitiesViewController(nibName: "AbilitiesTableView", bundle: nil)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let lastSearchFunctionIndex = defaults.integerForKey("lastSearchFunctionIndex")
        
        loadViewForIndex(lastSearchFunctionIndex)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadViewForController(searchView : UIViewController)
    {
        containerView.addSubview(searchView.view)
    }
    
    @IBAction func segmentedControlValueDidChange(sender: AnyObject)
    {
        NSLog("segmentedControlValueDidChange \(sender)")
        let segmentIndex = segmentedControl.selectedSegmentIndex
        if segmentIndex != UISegmentedControlNoSegment
        {
            loadViewForIndex(segmentIndex)
        }
    }

    func loadViewForIndex(viewIndex: Int)
    {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(viewIndex, forKey: "lastSearchFunctionIndex")
        switch viewIndex {
        case 0:
            loadViewForController(pokemonsController)
        case 1:
            loadViewForController(movesController)
        case 2:
            loadViewForController(abilitiesController)
        default:
            NSLog("Invalid index")
        }

    }
}

