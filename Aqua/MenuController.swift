//
//  MenuController.swift
//  Aqua
//
//  Created by Gopi on 29/04/21.
//

import Foundation
import AppKit

class MenuController {
    private var statusBar: NSStatusBar
    private var statusItem: NSStatusItem
    
    init() {
        statusBar = NSStatusBar.init()
        statusItem = statusBar.statusItem(withLength: 28.0)
       
        if let statusBarButton = statusItem.button {
            statusBarButton.image = #imageLiteral(resourceName: "FullGlassIcon")
            statusBarButton.image?.size = NSSize(width: 18.0, height: 18.0)
            statusBarButton.image?.isTemplate = true
        }

    }
    
    
}
