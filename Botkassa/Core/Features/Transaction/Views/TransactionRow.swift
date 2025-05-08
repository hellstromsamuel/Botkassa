//
//  TransactionRowView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//

import SwiftUI

struct TransactionRow: View {
    let transaction: Transaction

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(transaction.title)
                    .font(.headline)
                Text(transaction.timeAdded, style: .date)
                    .font(.subheadline)
            }
            Spacer()
            Text(TransactionsHelper.formatAmount(from: transaction.amount))
                .foregroundColor(transaction.type == .income ? .green : .red)
        }
        .padding(.vertical, 4)
    }
}

struct TransactionRowView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow(transaction: TransactionMock.sampleTransactions[0])
    }
}
