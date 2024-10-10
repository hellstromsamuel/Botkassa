//
//  MockTeam.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct MockTeam {
    static let dateFormatter = ISO8601DateFormatter()
    
    static let sampleTeams: [Team] = [
        Team(
            id: "team1",
            name: "Thunderbolts",
            userIds: ["user1", "user2", "user3"],
            seasonIds: ["season1", "season2"],
            timeAdded: dateFormatter.date(from: "2024-01-15T09:00:00Z")!
        ),
        Team(
            id: "team2",
            name: "Lightning Strikers",
            userIds: ["user2", "user4", "user5"],
            seasonIds: ["season1"],
            timeAdded: dateFormatter.date(from: "2024-01-20T09:00:00Z")!
        ),
        Team(
            id: "team3",
            name: "Storm Chasers",
            userIds: ["user1", "user5", "user6"],
            seasonIds: ["season2"],
            timeAdded: dateFormatter.date(from: "2024-08-01T09:00:00Z")!
        )
    ]
}
