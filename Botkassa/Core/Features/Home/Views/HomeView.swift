//
//  HomeView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//
import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @State private var searchText: String = ""
    
    var filteredUsers: [User] {
        UsersHelper.filterUsersByName(users: viewModel.teamUsers, filterText: searchText)
    }

    var body: some View {
        NavigationView {
            Group {
                if let user = viewModel.user {
                    Form {
                        Section(header: Text("Me")) {
                            TransactionsSummaryView(
                                transactions: viewModel.transactions.filter {
                                    $0.userId == user.id
                                }
                            )
                        }
                        
                        Section(header: Text("Team")) {
                            if filteredUsers.isEmpty {
                                Text("No result for '\(searchText)'")
                                    .foregroundColor(.gray)
                            } else {
                                TeamUsersListView(
                                    teamUsers: filteredUsers,
                                    transactions: viewModel.transactions
                                )
                            }
                        }
                    }
                    .navigationTitle("Hi, \(user.firstName)")
                    .searchable(text: $searchText)
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
