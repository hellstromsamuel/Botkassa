//
//  User.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct User: Identifiable, Codable {
    var id: String
    var name: String
    var email: String?
    var teamIds: [String]
    var timeAdded: Date
}
