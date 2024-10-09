//
//  ProfileViewModel.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//


import Foundation
import SwiftUI

class ProfileViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var notificationsEnabled: Bool = false
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false

    func loadProfileData() {
        // Mock profile data
        self.name = "John Doe"
        self.email = "john.doe@example.com"
        self.notificationsEnabled = true
    }
}
