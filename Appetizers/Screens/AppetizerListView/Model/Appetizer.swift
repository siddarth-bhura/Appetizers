//
//  Appetizer.swift
//  Appetizers
//
//  Created by Siddarth Bhura on 15/03/25.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer: Appetizer = Appetizer(
        id: 1,
        name: "Veggie Delight",
        description: "A medley of fresh vegetables",
        price: 9.99,
        imageURL: "",
        calories: 150,
        protein: 5,
        carbs: 25
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
