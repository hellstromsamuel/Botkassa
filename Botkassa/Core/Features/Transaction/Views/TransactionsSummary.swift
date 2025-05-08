//
//  TransactionSummaryView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//

import SwiftUI
import Foundation

struct TransactionsSummary: View {
    let transactions: [Transaction]
    
    var totalIncome: Double {
        TransactionsHelper.totalIncome(from: transactions)
    }

    var totalPayments: Double {
        TransactionsHelper.totalPayments(from: transactions)
    }

    var remainingAmount: Double {
        TransactionsHelper.remainingAmount(from: transactions)
    }

    var body: some View {
        List {
            HStack {
                Text("Income")
                    .font(.headline)
                Spacer()
                Text(TransactionsHelper.formatAmount(from: totalIncome))
            }
            HStack {
                Text("Payments")
                    .font(.headline)
                Spacer()
                Text(TransactionsHelper.formatAmount(from: totalPayments))
            }
            HStack {
                Text("Remaining")
                    .font(.headline)
                Spacer()
                Text(TransactionsHelper.formatAmount(from: remainingAmount))
            }.foregroundColor(remainingAmount < 0 ? .red : .green)
        }
    }
}

struct TransactionsSummaryView_Preview: PreviewProvider {
    static var previews: some View {
        TransactionsSummary(transactions: TransactionMock.sampleTransactions)
    }
}
