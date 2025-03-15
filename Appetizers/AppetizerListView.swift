//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Siddarth Bhura on 15/03/25.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizers 🍟")
        }
    }
}

#Preview {
    AppetizerListView()
}
