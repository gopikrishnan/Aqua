//
//  MainViewController.swift
//  Aqua
//
//  Created by Gopi on 03/05/21.
//

import Cocoa

class MainViewController: NSViewController {

    override func viewDidAppear() {
        super.viewDidAppear()
        NSLog("Popover Appeared!")

    }
    
    override func viewDidDisappear() {
        super.viewDidDisappear()
        NSLog("Popover Disappeared!")

    }
    
}
