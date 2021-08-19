//
//  AppDelegate.swift
//  Aqua
//
//  Created by Gopi on 28/04/21.
//

import Cocoa
import SwiftUI

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!
    var menuBar: MenuController?
    var popover = NSPopover.init()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
       
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let mainViewController = storyboard.instantiateController(withIdentifier:"MainViewController")
        
        popover.contentViewController =  mainViewController as! MainViewController
        popover.contentSize = NSSize(width: 400, height: 300)
        menuBar = MenuController.init(popover)
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }


}

