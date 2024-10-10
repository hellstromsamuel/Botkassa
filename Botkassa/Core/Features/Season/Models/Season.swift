//
//  Season.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct Season: Identifiable, Codable {
    var id: String
    var name: String
    var startDate: Date
    var endDate: Date
    var teamIds: [String]
    var timeAdded: Date
}
