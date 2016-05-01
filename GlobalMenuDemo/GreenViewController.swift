//
//  GreenViewController.swift
//  GlobalMenuPOC
//
//  Created by Sravan on 01/05/16.
//  Copyright (c) 2016 Sravan. All rights reserved.
//

import Foundation
import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var btnGlobalMenu: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.greenColor()

        self.setUpGlobalMenu()
    }
    
    func setUpGlobalMenu() {        
        if self.revealViewController() != nil {
//            self.revealViewController.rightViewRevealOverdraw = 0.0


            self.btnGlobalMenu.target = revealViewController()
            
            self.revealViewController().rightViewRevealOverdraw = 0
            
//            self.btnGlobalMenu.action = "revealToggle:"
            self.btnGlobalMenu.action = "rightRevealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        }
    }
}