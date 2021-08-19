//
//  Listener.swift
//  Aqua
//
//  Created by Gopi on 29/04/21.
//

import Foundation
import Cocoa

class Listener {
    private var listener: Any?
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
        listener = NSEvent.addGlobalMonitorForEvents(matching: mask, handler: handler) as! NSObject
    }

    public func stop() {
      if listener != nil {
        NSEvent.removeMonitor(listener!)
        listener = nil
      }
    }
}
