//
//  TransactionDetailsView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//

import SwiftUI

struct TransactionDetails: View {
    let transaction: Transaction

    // Date formatter for displaying date and time
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium // e.g., Oct 15, 2024
        formatter.timeStyle = .short  // e.g., 5:42 PM
        return formatter
    }()

    var body: some View {
        List {
            Section(header: Text("Detaljer")) {
                HStack {
                    Text("Description")
                        .font(.headline)
                    Spacer()
                    Text(transaction.description)
                }

                HStack {
                    Text("Amount")
                        .font(.headline)
                    Spacer()
                    Text(TransactionsHelper.formatAmount(from: transaction.amount))
                        .foregroundColor(transaction.type == .income ? .green : .red)
                }

                HStack {
                    Text("Date")
                        .font(.headline)
                    Spacer()
                    Text(dateFormatter.string(from: transaction.timeAdded))
                        .font(.body)
                }
                
                HStack {
                    Text("Type")
                        .font(.headline)
                    Spacer()
                    Text(transaction.type.rawValue.capitalized)
                }

                HStack {
                    Text("User ID")
                        .font(.headline)
                    Spacer()
                    Text(transaction.userId)
                        .font(.body)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(transaction.type.displayName)
    }
}

struct TransactionDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetails(transaction: TransactionMock.sampleTransactions[0])
    }
}
