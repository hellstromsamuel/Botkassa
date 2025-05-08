//
//  TransactionHelper.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//


import Foundation

class TransactionsHelper {
    static func formatAmount(from amount: Double) -> String {
        return String(format: "%.2f", amount)
    }
    
    static func totalIncome(from transactions: [Transaction]) -> Double {
        let fines = transactions.filter { $0.type == .income }
        return fines.reduce(0) { $0 + $1.amount }
    }

    static func totalPayments(from transactions: [Transaction]) -> Double {
        let payments = transactions.filter { $0.type == .payment }
        return payments.reduce(0) { $0 + $1.amount }
    }

    static func remainingAmount(from transactions: [Transaction]) -> Double {
        return totalIncome(from: transactions)-totalPayments(from: transactions)
    }

    static func filterTransactions(ofType type: TransactionType, from transactions: [Transaction]) -> [Transaction] {
        return transactions.filter { $0.type == type }
    }
    
    static func sortTransactions<T: Comparable>(
           direction: SortDirection,
           by keyPath: KeyPath<Transaction, T>,
           from transactions: [Transaction]
       ) -> [Transaction] {
           switch direction {
           case .ascending:
               return transactions.sorted { $0[keyPath: keyPath] < $1[keyPath: keyPath] }
           case .descending:
               return transactions.sorted { $0[keyPath: keyPath] > $1[keyPath: keyPath] }
           }
       }
}
