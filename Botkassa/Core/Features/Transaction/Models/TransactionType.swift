//
//  TransactionType.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

enum TransactionType: String, Codable, CaseIterable {
    case fine
    case payment
    
    var displayName: String {
        switch self {
        case .fine:
            return "Bot"
        case .payment:
            return "Betaling"
        }
    }
    
    var displayNamePlural: String {
        switch self {
        case .fine:
            return "Bøter"
        case .payment:
            return "Betalinger"
        }
    }
}
