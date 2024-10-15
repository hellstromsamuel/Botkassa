//
//  TeamMembersViewModel.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import Foundation
import Combine

class TeamUsersViewModel: ObservableObject {
    @Published var teamUsers: [User] = []

    func loadTeamUsers() {
        teamUsers = MockUser.sampleUsers
    }
}
