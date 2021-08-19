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
    private var popover: NSPopover
    private var eventListener: Listener?
    
    
    var interval = 60;
    

    
    init(_ popover: NSPopover) {
        self.popover = popover
        
        statusBar = NSStatusBar.init()
        statusItem = statusBar.statusItem(withLength: 28.0)
       
        if let statusBarButton = statusItem.button {
            statusBarButton.image = #imageLiteral(resourceName: "FullGlassIcon")
            statusBarButton.image?.size = NSSize(width: 18.0, height: 18.0)
            statusBarButton.image?.isTemplate = true
            statusBarButton.action = #selector(togglePopover(sender:))
            statusBarButton.target = self
        }
        eventListener = Listener(mask: [.leftMouseDown, .rightMouseDown], handler: mouseEventHandler)

        
    }
    
    @objc func togglePopover(sender: AnyObject) {
            if(popover.isShown) {
                hidePopover(sender)
            }
            else {
                showPopover(sender)
            }
        }
        
        func showPopover(_ sender: AnyObject) {
            if let statusBarButton = statusItem.button {
                popover.show(relativeTo: statusBarButton.bounds, of: statusBarButton, preferredEdge: NSRectEdge.maxY)
            }
            eventListener?.start()

        }
        
        func hidePopover(_ sender: AnyObject) {
            popover.performClose(sender)
            eventListener?.stop()

        }
    
        func mouseEventHandler(_ event: NSEvent?) {
            if(popover.isShown) {
                hidePopover(event!)
            }
        }
    
    
}
