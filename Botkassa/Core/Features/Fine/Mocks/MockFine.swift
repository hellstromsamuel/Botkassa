//
//  MockFine.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct MockFine {
    static let dateFormatter = ISO8601DateFormatter()
    
    static let sampleFines: [Fine] = [
        Fine(
            id: "fine1",
            amount: 20.0,
            title: "Late to practice",
            timeAdded: dateFormatter.date(from: "2024-10-10T09:30:00Z")!
        ),
        Fine(
            id: "fine2",
            amount: 50.0,
            title: "Missed game",
            timeAdded: dateFormatter.date(from: "2024-10-11T14:15:00Z")!
        ),
        Fine(
            id: "fine3",
            amount: 15.0,
            title: "Forgot equipment",
            timeAdded: dateFormatter.date(from: "2024-10-12T16:45:00Z")!
        )
    ]
}
