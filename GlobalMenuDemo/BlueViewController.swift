//
//  BlueViewController.swift
//  GlobalMenuPOC
//
//  Created by Sravan on 01/05/16.
//  Copyright (c) 2016 Sravan. All rights reserved.
//

import Foundation
import UIKit

class BlueViewController: UIViewController {
    @IBOutlet weak var btnGlobalMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnmenu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blueColor()
        self.btnmenu.backgroundColor = UIColor.redColor()
        //self.setUpGlobalMenu()
    }
    
    func setUpGlobalMenu() {
        if self.revealViewController() != nil
        {
            self.btnmenu.addTarget(self.revealViewController(), action: "rightRevealToggle:", forControlEvents: UIControlEvents.TouchUpInside)
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        }
        
        //        {
//            self.btnGlobalMenu.target = self.revealViewController()
//            self.revealViewController().rightViewRevealOverdraw = 0
//            self.btnGlobalMenu.action = "rightRevealToggle:"
//            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
//        }
    }
}