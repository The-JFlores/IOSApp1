//
//  Order.swift
//  IOSApp1
//
//  Created by Jose Flores on 2025-09-18.
//

import Foundation

struct Order: Identifiable, Codable {
    var id = UUID()          // identificador único
    var name: String         // nombre de la persona
    var drink: String        // bebida pedida
    var size: String         // tamaño (Small, Medium, Large)
    var extras: [String]     // extras como leche, azúcar, etc.
}
