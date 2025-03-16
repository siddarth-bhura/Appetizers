//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Siddarth Bhura on 15/03/25.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
