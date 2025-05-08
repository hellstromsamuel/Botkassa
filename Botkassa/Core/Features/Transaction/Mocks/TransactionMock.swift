//
//  MockTransaction.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct TransactionMock {
    static let dateFormatter = ISO8601DateFormatter()

    static let sampleTransactions: [Transaction] = [
        Transaction(
            id: "transaction1",
            amount: 2500.0,
            description: "October salary payment from employer deposited to main account.",
            timeAdded: dateFormatter.date(from: "2024-10-01T09:00:00Z")!,
            title: "Salary",
            type: .income,
            userId: "user1"
        ),
        Transaction(
            id: "transaction2",
            amount: 120.0,
            description: "Weekly grocery shopping at the local supermarket.",
            timeAdded: dateFormatter.date(from: "2024-10-03T17:30:00Z")!,
            title: "Groceries",
            type: .payment,
            userId: "user1"
        ),
        Transaction(
            id: "transaction3",
            amount: 45.0,
            description: "Morning coffee and pastries with friends at the café downtown.",
            timeAdded: dateFormatter.date(from: "2024-10-04T08:45:00Z")!,
            title: "Coffee",
            type: .payment,
            userId: "user1"
        ),
        Transaction(
            id: "transaction4",
            amount: 180.0,
            description: "Round-trip flight ticket to Berlin for weekend travel.",
            timeAdded: dateFormatter.date(from: "2024-10-05T13:15:00Z")!,
            title: "Flight Ticket",
            type: .payment,
            userId: "user1"
        ),
        Transaction(
            id: "transaction5",
            amount: 500.0,
            description: "Transferred funds from savings account to main budget for monthly expenses.",
            timeAdded: dateFormatter.date(from: "2024-10-06T10:00:00Z")!,
            title: "Savings Transfer",
            type: .income,
            userId: "user1"
        ),
        Transaction(
            id: "transaction6",
            amount: 75.0,
            description: "Dinner at a restaurant with family on Saturday evening.",
            timeAdded: dateFormatter.date(from: "2024-10-07T20:00:00Z")!,
            title: "Dining Out",
            type: .payment,
            userId: "user1"
        )
    ]

}
