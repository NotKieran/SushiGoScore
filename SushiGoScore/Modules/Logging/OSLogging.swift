//
//  OSLogging.swift
//  SushiGoScore
//
//  Created by Kieran Hall on 12/08/2020.
//  Copyright © 2020 Kieran Hall. All rights reserved.
//

import os
import Foundation

protocol OSLogging {
    func createLog() -> OSLog
    var logInstance: OSLog { get }
}

extension OSLogging {
    func createLog() -> OSLog {
        let subsystem = Bundle.main.bundleIdentifier ?? "com.kieranhall.sushigoscore"
        return OSLog(subsystem: subsystem, category: String(describing: Self.self))
    }
}
