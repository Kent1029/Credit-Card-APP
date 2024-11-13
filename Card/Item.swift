//
//  Item.swift
//  Card
//
//  Created by KT Huang on 2024/11/13.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
