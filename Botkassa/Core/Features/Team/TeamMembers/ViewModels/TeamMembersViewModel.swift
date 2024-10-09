//
//  TeamMembersViewModel.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//


import Foundation

class TeamMembersViewModel: ObservableObject {
    @Published var teamMembers: [TeamMember] = []

    func loadTeamMembers() {
        // Fetch or load team members from a service or model
        self.teamMembers = [
            TeamMember(id: 1, name: "Alice"),
            TeamMember(id: 2, name: "Bob"),
        ]
    }
}

struct TeamMember: Identifiable {
    let id: Int
    let name: String
}
