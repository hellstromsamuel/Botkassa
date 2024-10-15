//
//  HomeViewModel.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import Foundation


class HomeViewModel: ObservableObject {
    @Published var user: User? = nil
    @Published var transactions: [Transaction] = []
    @Published var teamUsers: [User] = []
    
    func loadUserData() {
        user = MockUser.sampleUsers[0]
        transactions = MockTransaction.sampleTransactions
        teamUsers = MockUser.sampleUsers
    }
}
