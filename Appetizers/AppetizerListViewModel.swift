//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Siddarth Bhura on 15/03/25.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    
    @Published var alertItem: AlertItem?
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToConnect
                    }
                }
            }
        }
    }
}
