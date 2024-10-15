//
//  TransactionRowView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//

import SwiftUI

struct TransactionRowView: View {
    let transaction: Transaction

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(transaction.description)
                    .font(.headline)
                Text(transaction.timeAdded, style: .date)
                    .font(.subheadline)
            }
            Spacer()
            Text("$\(transaction.amount, specifier: "%.2f")")
                .foregroundColor(transaction.type == .payment ? .green : .red)
        }
        .padding(.vertical, 4)
    }
}

struct TransactionRowView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRowView(transaction: Transaction(
            id: "transaction1",
            type: TransactionType.fine,
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
