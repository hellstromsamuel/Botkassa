//
//  TransactionDetailsView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//

import SwiftUI

struct TransactionDetailsView: View {
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
                    Text("$\(transaction.amount, specifier: "%.2f")")
                        .foregroundColor(transaction.type == .payment ? .green : .red)
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
                
                if let fine = transaction.fineId, !fine.isEmpty {
                    HStack {
                        Text("Fine ID")
                            .font(.headline)
                        Spacer()
                        Text(fine)
                    }
                }

                HStack {
                    Text("User ID")
                        .font(.headline)
                    Spacer()
                    Text(transaction.userId)
                        .font(.body)
                }
                
                HStack {
                    Text("Season ID")
                        .font(.headline)
                    Spacer()
                    Text(transaction.seasonId)
                        .font(.body)
                }
                
                HStack {
                    Text("Team Id")
                        .font(.headline)
                    Spacer()
                    Text(transaction.teamId)
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
        TransactionDetailsView(transaction: Transaction(
            id: "transaction1",
            type: .fine,
            amount: 20.0,
            description: "Late to practice fine",
            fineId: "fine1",
            userId: "user1",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: Date()
        ))
    }
}
