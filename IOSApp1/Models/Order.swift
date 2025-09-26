//
//  Order.swift
//  IOSApp1
//
//  Created by Jose Flores on 2025-09-18.
//

import Foundation

// Simple model for an order
// Demonstrates creating a struct and using Identifiable
struct Order: Identifiable, Codable {
    var id = UUID()          // unique identifier
    var name: String         // name of the person
    var drink: String        // drink ordered
    var size: String         // size (Small, Medium, Large)
    var extras: [String]     // extras like milk, sugar, etc.
}

