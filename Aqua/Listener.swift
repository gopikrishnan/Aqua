//
//  Listener.swift
//  Aqua
//
//  Created by Gopi on 29/04/21.
//

import Foundation
import Cocoa

class Listner {
    private var listner: Any?
    private let mask: NSEvent.EventTypeMask
    private let handler: (NSEvent?) -> Void
    
    public init(mask: NSEvent.EventTypeMask, handler: @escaping (NSEvent?) -> Void) {
      self.mask = mask
      self.handler = handler
    }

    deinit {
      stop()
    }

    public func start() {
        listner = NSEvent.addGlobalMonitorForEvents(matching: mask, handler: handler) as! NSObject
    }

    public func stop() {
      if listner != nil {
        NSEvent.removeMonitor(listner!)
        listner = nil
      }
    }
}
