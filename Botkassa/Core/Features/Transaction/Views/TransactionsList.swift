//
//  TransactionListView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import SwiftUI

struct TransactionsList: View {
    var transactions: [Transaction]

    var body: some View {
        List {
            ForEach(transactions, id: \.id) { transaction in
                NavigationLink(destination: TransactionDetails(transaction: transaction)) {
                    TransactionRow(transaction: transaction)
                }
                .transition(.opacity.combined(with: .move(edge: .bottom)))
            }
        }
        .listStyle(.plain)
        .animation(.default, value: transactions)
    }
}

struct TransactionsList_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsList(transactions: TransactionMock.sampleTransactions)
    }
}
