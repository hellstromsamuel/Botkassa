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
    @Published var email: String?
    @Published var notificationsEnabled: Bool = false
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false

    func loadProfileData() {
        // Mock profile data
        let user = UserMock.sampleUsers[0]
        self.name = user.firstName + " " + user.lastName
        self.email = user.email
        self.notificationsEnabled = true
    }
}
