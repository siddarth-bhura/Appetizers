//
//  OrderView.swift
//  Appetizers
//
//  Created by Siddarth Bhura on 15/03/25.
//

import SwiftUI

struct OrderView: View {

    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(PlainListStyle())
                    Button {
                        print("Order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place to Order")
                    }
                    .padding(.bottom, 25)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\n Please add an appetizer!")
                }
            }
            .navigationTitle("Orders 🧾")
        }
    }
    
    
}

#Preview {
    OrderView()
}
