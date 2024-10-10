//
//  TransactionListView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import SwiftUI

struct TransactionListView: View {
    let transactions: [Transaction]

    var body: some View {
        List(transactions) { transaction in
            HStack {
                VStack(alignment: .leading) {
                    Text(transaction.description)
                        .font(.headline)
                    Text(transaction.timeAdded, style: .date)
                        .font(.subheadline)
                }
                Spacer()
                Text("$\(transaction.amount, specifier: "%.2f")")
                    .foregroundColor(transaction.amount > 0 ? .green : .red)
                    .font(.headline)
            }
        }
    }
}

struct TransactionListView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionListView(transactions: MockTransaction.sampleTransactions)
    }
}
