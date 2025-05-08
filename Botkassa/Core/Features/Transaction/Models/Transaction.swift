//
//  Transaction.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

struct Transaction: Identifiable, Codable, Equatable {
    var id: String
    var amount: Double
    var description: String
    var timeAdded: Date
    var title: String
    var type: TransactionType
    var userId: String
}
