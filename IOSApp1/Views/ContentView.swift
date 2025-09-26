//
//  ContentView.swift
//  IOSApp1
//
//  Created by Jose Flores on 2025-09-18.
//

import SwiftUI

// Main view of the app

struct ContentView: View {
    @State private var orders: [Order] = []         // List of orders
    @State private var showingAddOrder = false      // Controls whether AddOrderView is presented

    var body: some View {
        NavigationView {
            List {
                ForEach(orders) { order in
                    VStack(alignment: .leading) {
                        Text(order.name)
                            .font(.headline)           // Display the person's name
                        Text("\(order.size) \(order.drink)")
                            .font(.subheadline)       // Display size and drink
                        if !order.extras.isEmpty {
                            Text("Extras: \(order.extras.joined(separator: ", "))")
                                .font(.caption)       // Display extras if any
                        }
                    }
                }
            }
            .navigationTitle("Tim Hortons Orders")
            .toolbar {
                Button(action: {
                    showingAddOrder = true          // Open AddOrderView when '+' button is pressed
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddOrder) {
                AddOrderView(orders: $orders)       // Pass the binding to AddOrderView
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
