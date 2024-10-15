//
//  TransactionListView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import SwiftUI

struct TransactionsListView: View {
    let transactions: [Transaction]
    
    var body: some View {
        List {
            ForEach(transactions) { transaction in
                NavigationLink(destination: TransactionDetailsView(transaction: transaction)) {
                    TransactionRowView(transaction: transaction)
                }
            }
        }
    }
}

struct TransactionsListView_Preview: PreviewProvider {
    static var previews: some View {
        TransactionsListView(transactions: MockTransaction.sampleTransactions)
    }
}
