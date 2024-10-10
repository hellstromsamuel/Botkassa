//
//  Team.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct Team: Identifiable, Codable {
    var id: String
    var name: String
    var userIds: [String]
    var seasonIds: [String]
    var timeAdded: Date
}
