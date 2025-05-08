//
//  TransactionType.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 10/10/2024.
//

import Foundation

enum TransactionType: String, Codable, CaseIterable {
    case income
    case payment
    
    var displayName: String {
        switch self {
        case .income:
            return "income"
        case .payment:
            return "payment"
        }
    }

}
