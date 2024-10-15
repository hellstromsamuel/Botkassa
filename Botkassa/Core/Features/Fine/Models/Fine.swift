//
//  Fine.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct Fine: Identifiable, Codable {
    var id: String
    var amount: Double
    var title: String
    var description: String?
    var timeAdded: Date
}
