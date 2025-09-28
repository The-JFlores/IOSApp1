//
//  Menu.swift
//  IOSApp1
//
//  Created by Jose Flores on 2025-09-26.
//

import Foundation

// Model for menu items
struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let sizeOptions: [String]
    let baseExtras: [String]
}
