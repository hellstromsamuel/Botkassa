//
//  HomeView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//
import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                if let user = viewModel.user {
                    Form {
                        Section(header: Text("Overview")) {
                            TransactionsSummary(
                                transactions: viewModel.transactions.filter {
                                    $0.userId == user.id
                                }
                            )
                        }
                    }
                    .navigationTitle("Hi, \(user.firstName)")
                } else {
                    VStack {
                        Text("Loading user data...")
                        ProgressView()
                    }
                }
            }
            .onAppear {
                viewModel.loadUserData()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
