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
        transactions = MockTransaction.sampleTransactions
    }
}
