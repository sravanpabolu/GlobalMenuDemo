//
//  GlobalMenuTableViewController.swift
//  GlobalMenuPOC
//
//  Created by Sravan on 01/05/16.
//  Copyright (c) 2016 Sravan. All rights reserved.
//

import Foundation
import UIKit

class GlobalMenuTableViewController: UITableViewController {
    
    var viewControllersArray = [ "BlueViewController", "GreenViewController", "RedViewController"]
    
    
    //MARK: - Table view controller delegates
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewControllersArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("CELL") as? UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "CELL")
        }
        
        //we know that cell is not empty now so we use ! to force unwrapping
        cell?.textLabel?.text = viewControllersArray[indexPath.row]
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Selected cell: \(viewControllersArray[indexPath.row])")
    
        switch indexPath.row {
        case 0 :
            //
            let destination = BlueViewController() // Your destination
            self.navigationController?.pushViewController(destination, animated: true)
            break
        case 1:
            let destination = GreenViewController() // Your destination
            self.navigationController?.pushViewController(destination, animated: true)
            break
        case 2:
            let destination = RedViewController() // Your destination
//            navigationController?.pushViewController(destination, animated: true)
            self.presentViewController(destination, animated: true, completion: nil);
            break
        default:
            println("Not a valid option selected")
        }
    }
}