//
//  Transaction.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct Transaction: Identifiable, Codable {
    var id: String
    var type: TransactionType
    var amount: Double
    var description: String
    var fineId: String?
    var userId: String
    var seasonId: String
    var teamId: String
    var timeAdded: Date
}
