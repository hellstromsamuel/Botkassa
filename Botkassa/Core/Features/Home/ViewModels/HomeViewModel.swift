//
//  HomeViewModel.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var username: String = ""

    func loadUserData() {
        // Load user data from a model or service
        self.username = "John Doe"
    }
}
