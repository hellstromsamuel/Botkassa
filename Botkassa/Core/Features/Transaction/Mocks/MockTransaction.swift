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
            amount: -20.0,
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
            userId: "user2",
            seasonId: "season1",
            teamId: "team2",
            timeAdded: dateFormatter.date(from: "2024-10-11T11:00:00Z")!
        ),
        Transaction(
            id: "transaction3",
            type: .fine,
            amount: -15.0,
            description: "Forgot equipment fine",
            fineId: "fine3",
            userId: "user3",
            seasonId: "season2",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-12T12:00:00Z")!
        ),
        Transaction(
            id: "transaction4",
            type: .payment,
            amount: 100.0,
            description: "Sponsorship contribution",
            fineId: nil,
            userId: "user4",
            seasonId: "season1",
            teamId: "team2",
            timeAdded: dateFormatter.date(from: "2024-10-13T13:30:00Z")!
        ),
        Transaction(
            id: "transaction5",
            type: .fine,
            amount: -30.0,
            description: "Missed game fine",
            fineId: "fine2",
            userId: "user5",
            seasonId: "season2",
            teamId: "team3",
            timeAdded: dateFormatter.date(from: "2024-10-14T14:45:00Z")!
        ),
        Transaction(
            id: "transaction6",
            type: .payment,
            amount: 75.0,
            description: "Uniform purchase",
            fineId: nil,
            userId: "user6",
            seasonId: "season2",
            teamId: "team3",
            timeAdded: dateFormatter.date(from: "2024-10-15T15:00:00Z")!
        ),
        Transaction(
            id: "transaction7",
            type: .fine,
            amount: -25.0,
            description: "Unsportsmanlike conduct fine",
            fineId: "fine4",
            userId: "user1",
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
            userId: "user2",
            seasonId: "season1",
            teamId: "team2",
            timeAdded: dateFormatter.date(from: "2024-10-17T17:30:00Z")!
        ),
        Transaction(
            id: "transaction9",
            type: .fine,
            amount: -10.0,
            description: "Late uniform return fine",
            fineId: "fine5",
            userId: "user3",
            seasonId: "season2",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-18T18:45:00Z")!
        ),
        Transaction(
            id: "transaction10",
            type: .payment,
            amount: 80.0,
            description: "Equipment rental",
            fineId: nil,
            userId: "user4",
            seasonId: "season2",
            teamId: "team2",
            timeAdded: dateFormatter.date(from: "2024-10-19T19:00:00Z")!
        ),
        Transaction(
            id: "transaction11",
            type: .fine,
            amount: -50.0,
            description: "Violation of team rules fine",
            fineId: "fine6",
            userId: "user5",
            seasonId: "season1",
            teamId: "team3",
            timeAdded: dateFormatter.date(from: "2024-10-20T20:15:00Z")!
        ),
        Transaction(
            id: "transaction12",
            type: .payment,
            amount: 120.0,
            description: "Annual membership fee",
            fineId: nil,
            userId: "user6",
            seasonId: "season1",
            teamId: "team3",
            timeAdded: dateFormatter.date(from: "2024-10-21T21:30:00Z")!
        ),
        Transaction(
            id: "transaction13",
            type: .fine,
            amount: -5.0,
            description: "Late payment fine",
            fineId: "fine7",
            userId: "user1",
            seasonId: "season2",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-22T22:45:00Z")!
        ),
        Transaction(
            id: "transaction14",
            type: .payment,
            amount: 200.0,
            description: "Donation to team",
            fineId: nil,
            userId: "user2",
            seasonId: "season2",
            teamId: "team2",
            timeAdded: dateFormatter.date(from: "2024-10-23T23:00:00Z")!
        ),
        Transaction(
            id: "transaction15",
            type: .fine,
            amount: -40.0,
            description: "Equipment damage fine",
            fineId: "fine8",
            userId: "user3",
            seasonId: "season1",
            teamId: "team1",
            timeAdded: dateFormatter.date(from: "2024-10-24T08:00:00Z")!
        )
    ]
}
