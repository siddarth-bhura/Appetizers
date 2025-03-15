//
//  Alert.swift
//  Appetizers
//
//  Created by Siddarth Bhura on 15/03/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id: UUID = UUID()
    let title: Text
    let message: Text
    let dismmissButton: Alert.Button
}


struct AlertContext {
    
    static let invalidURL = AlertItem(
        title: Text("Invalid URL"),
        message: Text("There was a issue connecting with server because of invalid URL. Please contact support"),
        dismmissButton: .default(Text("OK"))
    )
    
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text("The data received from the server was invalid. Please contact the support."),
        dismmissButton: .default(Text("OK"))
    )
    
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid Response from the server. Please contact the support or try again later."),
        dismmissButton: .default(Text("OK"))
    )
    
    static let unableToConnect = AlertItem(
        title: Text("Unable to Connect"),
        message: Text("Unable to connect to Server. Please check your internet connection"),
        dismmissButton: .default(Text("OK"))
    )
}
