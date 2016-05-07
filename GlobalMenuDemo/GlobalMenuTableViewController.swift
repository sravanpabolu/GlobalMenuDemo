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
    let identifier: String = "CELL"
    
    //MARK: - Table view controller delegates
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewControllersArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier)
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier)
        }
        
        //we know that cell is not empty now so we use ! to force unwrapping
        cell?.textLabel?.text = viewControllersArray[indexPath.row]
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Selected cell: \(viewControllersArray[indexPath.row])")
    
        let revealController:SWRevealViewController = revealViewController()
        
        switch indexPath.row {
        case 0 :
            //
            let destination = BlueViewController() // Your destination
//            self.navigationController?.pushViewController(destination, animated: true)
            
//            let controller = self.storyboard?.instantiateViewControllerWithIdentifier("BlueViewController") as! BlueViewController
//            self.navigationController?.pushViewController(controller, animated: true)
            
            
            
//            UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:newFrontController];
//            [revealController pushFrontViewController:navigationController animated:YES];
            
//            SWRevealViewController *revealController = self.revealViewController;

            
            
            let navigationController : UINavigationController = UINavigationController(rootViewController:destination)
            revealController.pushFrontViewController(navigationController, animated: true)
            
            break
        case 1:
            let destination = GreenViewController() // Your destination
//            self.navigationController?.pushViewController(destination, animated: true)
            let navigationController : UINavigationController = UINavigationController(rootViewController:destination)
            revealController.pushFrontViewController(navigationController, animated: true)
            break
        case 2:
            let destination = RedViewController() // Your destination
//            navigationController?.pushViewController(destination, animated: true)
//            self.presentViewController(destination, animated: true, completion: nil);
            let navigationController : UINavigationController = UINavigationController(rootViewController:destination)
            revealController.pushFrontViewController(navigationController, animated: true)
            break
        default:
            print("Not a valid option selected")
        }
    }
}