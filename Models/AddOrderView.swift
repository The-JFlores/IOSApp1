//
//  AddOrderView.swift
//  IOSApp1
//
//  Created by Jose Flores on 2025-09-18.
//
import SwiftUI

struct AddOrderView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var orders: [Order]

    @State private var name = ""
    @State private var drink = ""
    @State private var size = "Medium"
    @State private var extras = ""

    let sizes = ["Small", "Medium", "Large"]

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                TextField("Drink", text: $drink)
                Picker("Size", selection: $size) {
                    ForEach(sizes, id: \.self) { s in
                        Text(s)
                    }
                }
                TextField("Extras (comma separated)", text: $extras)
            }
            .navigationTitle("Add Order")
            .toolbar {
                Button("Save") {
                    let extrasArray = extras
                        .split(separator: ",")
                        .map { $0.trimmingCharacters(in: .whitespaces) }
                    let newOrder = Order(
                        name: name,
                        drink: drink,
                        size: size,
                        extras: extrasArray
                    )
                    orders.append(newOrder)
                    dismiss()
                }
            }
        }
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView(orders: .constant([]))
    }
}
