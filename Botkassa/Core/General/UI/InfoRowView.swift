//
//  InfoRowView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//

import SwiftUI

struct InfoRowView: View {
    var label: String
    var value: String
    var valueColor: Color = .primary // Default to black
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            Text(value)
                .foregroundColor(valueColor)
        }
    }
}
