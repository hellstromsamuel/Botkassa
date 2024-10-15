//
//  TeamUsersListView 2.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//

import SwiftUI

struct TeamUserRowView: View {
    var user: User
    var transactions: [Transaction]?
    
    var totalFines: Double? {
        guard let transactions = transactions else {
            return nil
        }
        return TransactionsHelper.totalFines(from: transactions)
    }

    var remainingAmount: Double? {
        guard let transactions = transactions else {
            return nil
        }
        return TransactionsHelper.outstandingAmount(from: transactions)
    }

    var body: some View {
        HStack {
            Text(user.firstName + " " + user.lastName)
            Spacer()
            VStack {
                if let totalFines = totalFines {
                   Text("$\(String(format: "%.2f", totalFines))")
                }
                if let remainingAmount = remainingAmount {
                   Text("$\(String(format: "%.2f", remainingAmount))")
                       .foregroundColor(remainingAmount < 0 ? .red : .green)
                }
            }
        }
    }
}

struct TeamUserRowViewView_Previews: PreviewProvider {
    static var previews: some View {
        TeamUserRowView(
            user: MockUser.sampleUsers.first { $0.id == "user1" }!,
            transactions: MockTransaction.sampleTransactions.filter {
                $0.userId == "user1"
            }
        )
    }
}
