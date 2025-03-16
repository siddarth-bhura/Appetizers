//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Siddarth Bhura on 16/03/25.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content.buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

// Not used in the app, just for educational purpose
extension View {
    public func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStyle())
    }
}
