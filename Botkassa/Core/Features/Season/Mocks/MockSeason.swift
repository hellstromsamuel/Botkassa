//
//  MockSeason.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct MockSeason {
    static let dateFormatter = ISO8601DateFormatter()
    
    static let sampleSeasons: [Season] = [
        Season(
            id: "season1",
            name: "2024 Spring Season",
            startDate: dateFormatter.date(from: "2024-03-01T00:00:00Z")!,
            endDate: dateFormatter.date(from: "2024-06-30T23:59:59Z")!,
            teamIds: ["team1", "team2"],
            timeAdded: dateFormatter.date(from: "2024-02-01T10:00:00Z")!
        ),
        Season(
            id: "season2",
            name: "2024 Fall Season",
            startDate: dateFormatter.date(from: "2024-09-01T00:00:00Z")!,
            endDate: dateFormatter.date(from: "2024-12-31T23:59:59Z")!,
            teamIds: ["team1", "team3"],
            timeAdded: dateFormatter.date(from: "2024-08-01T10:00:00Z")!
        )
    ]
}
