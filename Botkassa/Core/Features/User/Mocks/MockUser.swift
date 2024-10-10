//
//  MockUser.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct MockUser {
    static let dateFormatter = ISO8601DateFormatter()
    
    static let sampleUsers: [User] = [
        User(
            id: "user1",
            name: "Alice Johnson",
            email: "alice@example.com",
            teamIds: ["team1", "team3"],
            timeAdded: dateFormatter.date(from: "2024-01-10T08:00:00Z")!
        ),
        User(
            id: "user2",
            name: "Bob Smith",
            email: "bob@example.com",
            teamIds: ["team1", "team2"],
            timeAdded: dateFormatter.date(from: "2024-01-11T09:15:00Z")!
        ),
        User(
            id: "user3",
            name: "Charlie Brown",
            email: "charlie@example.com",
            teamIds: ["team1"],
            timeAdded: dateFormatter.date(from: "2024-01-12T10:30:00Z")!
        ),
        User(
            id: "user4",
            name: "Diana Prince",
            email: "diana@example.com",
            teamIds: ["team2"],
            timeAdded: dateFormatter.date(from: "2024-01-13T11:45:00Z")!
        ),
        User(
            id: "user5",
            name: "Ethan Hunt",
            email: "ethan@example.com",
            teamIds: ["team2", "team3"],
            timeAdded: dateFormatter.date(from: "2024-01-14T13:00:00Z")!
        ),
        User(
            id: "user6",
            name: "Fiona Gallagher",
            email: "fiona@example.com",
            teamIds: ["team3"],
            timeAdded: dateFormatter.date(from: "2024-01-15T14:15:00Z")!
        )
    ]
}
