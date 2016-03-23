//
//  CLKComplicationServer.swift
//  ZamzamKit
//
//  Created by Basem Emara on 3/22/16.
//  Copyright © 2016 Zamzam. All rights reserved.
//

import Foundation
import ClockKit

public extension CLKComplicationServer {
    
    /**
     Invalidates and reloads all timeline data
     */
    public func reloadTimelineForComplications() {
        if let complications = self.activeComplications
            where !complications.isEmpty {
                for complication in complications {
                    self.reloadTimelineForComplication(complication)
                }
        }
    }
    
}