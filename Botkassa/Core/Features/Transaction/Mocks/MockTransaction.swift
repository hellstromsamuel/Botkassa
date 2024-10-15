//
//  MockTransaction.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct MockTransaction {
    static let dateFormatter = ISO8601DateFormatter()

    static let sampleTransactions: [Transaction] = [
        Transaction(
            id: "transaction1",
            type: .fine,
            amount: 2000.0,
            description: "Late to practice fine",
            fineId: "fine1",
            userId: "user1",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-10T10:00:00Z")!
        ),
        Transaction(
            id: "transaction2",
            type: .payment,
            amount: 50.0,
            description: "Team membership fee",
            fineId: nil,
            userId: "user1",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-11T11:00:00Z")!
        ),
        Transaction(
            id: "transaction3",
            type: .fine,
            amount: 15.0,
            description: "Forgot equipment fine",
            fineId: "fine3",
            userId: "user2",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-12T12:00:00Z")!
        ),
        Transaction(
            id: "transaction4",
            type: .payment,
            amount: 100.0,
            description: "Sponsorship contribution",
            fineId: nil,
            userId: "user2",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-13T13:30:00Z")!
        ),
        Transaction(
            id: "transaction5",
            type: .fine,
            amount: 300.0,
            description: "Missed game fine",
            fineId: "fine2",
            userId: "user2",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-14T14:45:00Z")!
        ),
        Transaction(
            id: "transaction6",
            type: .payment,
            amount: 75.0,
            description: "Uniform purchase",
            fineId: nil,
            userId: "user3",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-15T15:00:00Z")!
        ),
        Transaction(
            id: "transaction7",
            type: .fine,
            amount: 25.0,
            description: "Unsportsmanlike conduct fine",
            fineId: "fine4",
            userId: "user3",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-16T16:15:00Z")!
        ),
        Transaction(
            id: "transaction8",
            type: .payment,
            amount: 60.0,
            description: "Training camp fee",
            fineId: nil,
            userId: "user3",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-17T17:30:00Z")!
        ),
        Transaction(
            id: "transaction9",
            type: .fine,
            amount: 10.0,
            description: "Late uniform return fine",
            fineId: "fine5",
            userId: "user1",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-18T18:45:00Z")!
        ),
        Transaction(
            id: "transaction10",
            type: .payment,
            amount: 80.0,
            description: "Equipment rental",
            fineId: nil,
            userId: "user1",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-19T19:00:00Z")!
        ),
       
    ]
}
