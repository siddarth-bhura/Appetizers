//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Siddarth Bhura on 15/03/25.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject private var viewModel = AppetizerListViewModel()

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
//                        .listRowSeparator(.hidden)
//                        .listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedAppetizer = appetizer
                        }
                }
                .navigationTitle("Appetizers 🍟")
                .disabled(viewModel.isShowingDetail)
            }
//            .onAppear {
//                viewModel.getAppetizers()
//            }
            .task {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!, isShowingDetail: $viewModel.isShowingDetail)
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismmissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
