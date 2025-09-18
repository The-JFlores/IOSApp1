//
//  ContentView.swift
//  IOSApp1
//
//  Created by Jose Flores on 2025-09-18.
//

import SwiftUI

struct ContentView: View {
    @State private var orders: [Order] = []         // Lista de pedidos
    @State private var showingAddOrder = false      // Controla si se muestra AddOrderView

    var body: some View {
        NavigationView {
            List {
                ForEach(orders) { order in
                    VStack(alignment: .leading) {
                        Text(order.name)
                            .font(.headline)
                        Text("\(order.size) \(order.drink)")
                            .font(.subheadline)
                        if !order.extras.isEmpty {
                            Text("Extras: \(order.extras.joined(separator: ", "))")
                                .font(.caption)
                        }
                    }
                }
            }
            .navigationTitle("Tim Hortons Orders")
            .toolbar {
                Button(action: {
                    showingAddOrder = true
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddOrder) {
                AddOrderView(orders: $orders)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
