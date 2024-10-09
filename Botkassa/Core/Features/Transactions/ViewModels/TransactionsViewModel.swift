//
//  TransactionsViewModel.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//


import Foundation

class TransactionsViewModel: ObservableObject {
    @Published var transactions: [Transaction] = []

    func loadTransactions() {
        // Mock data
        self.transactions = [
            Transaction(id: 1, description: "Fee Payment", amount: -25.00, date: Date()),
            Transaction(id: 2, description: "Refund", amount: 10.00, date: Date().addingTimeInterval(-86400)),
            Transaction(id: 3, description: "New Subscription", amount: -50.00, date: Date().addingTimeInterval(-172800))
        ]
    }
}

struct Transaction: Identifiable {
    let id: Int
    let description: String
    let amount: Double
    let date: Date
}
