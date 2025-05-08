//
//  MockUser.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct UserMock {
    static let dateFormatter = ISO8601DateFormatter()
    
    static let sampleUsers: [User] = [
        User(
            id: "user1",
            email: "alice@example.com",
            firstName: "Samuel",
            lastName: "Hellstrøm",
            teamIds: ["team1", "team3"],
            timeAdded: dateFormatter.date(from: "2024-01-10T08:00:00Z")!
        ),
        User(
            id: "user2",
            email: "bob@example.com",
            firstName: "Bob",
            lastName: "Smith",
            teamIds: ["team1", "team2"],
            timeAdded: dateFormatter.date(from: "2024-01-11T09:15:00Z")!
        ),
        User(
            id: "user3",
            email: "charlie@example.com",
            firstName: "Charlie",
            lastName: "Brown",
            teamIds: ["team1"],
            timeAdded: dateFormatter.date(from: "2024-01-12T10:30:00Z")!
        ),
        User(
            id: "user4",
            email: "diana@example.com",
            firstName: "Diana",
            lastName: "Prince",
            teamIds: ["team2"],
            timeAdded: dateFormatter.date(from: "2024-01-13T11:45:00Z")!
        ),
        User(
            id: "user5",
            email: "ethan@example.com",
            firstName: "Ethan",
            lastName: "Hunt",
            teamIds: ["team2", "team3"],
            timeAdded: dateFormatter.date(from: "2024-01-14T13:00:00Z")!
        ),
        User(
            id: "user6",
            email: "fiona@example.com",
            firstName: "Fiona",
            lastName: "Gallagher",
            teamIds: ["team3"],
            timeAdded: dateFormatter.date(from: "2024-01-15T14:15:00Z")!
        )
    ]
}
