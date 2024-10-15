//
//  TransactionSummaryView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//

import SwiftUI
import Foundation

struct TransactionsSummaryView: View {
    let transactions: [Transaction]
    
    var totalFines: Double {
        TransactionsHelper.totalFines(from: transactions)
    }

    var totalPayments: Double {
        TransactionsHelper.totalPayments(from: transactions)
    }

    var remainingAmount: Double {
        TransactionsHelper.outstandingAmount(from: transactions)
    }

    var body: some View {
        List {
            InfoRowView(
                label: "Fines",
                value: "$\(String(format: "%.2f", totalFines))"
            )
            InfoRowView(
                label: "Payments",
                value: "$\(String(format: "%.2f", totalPayments))"
            )
            InfoRowView(
                label: "Remaining",
                value: "$\(String(format: "%.2f", remainingAmount))",
                valueColor: remainingAmount < 0 ? .red : .green
            )
        }
    }
}

struct TransactionsSummaryView_Preview: PreviewProvider {
    static var previews: some View {
        TransactionsSummaryView(transactions: MockTransaction.sampleTransactions)
    }
}
