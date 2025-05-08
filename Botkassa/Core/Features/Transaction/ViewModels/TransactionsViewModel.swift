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
        transactions = TransactionMock.sampleTransactions
    }
    
    func sortedByDateDecending() -> [Transaction] {
        TransactionsHelper.sortTransactions(
            direction: .descending,
            by: \.timeAdded,
            from: transactions)
    }
}
