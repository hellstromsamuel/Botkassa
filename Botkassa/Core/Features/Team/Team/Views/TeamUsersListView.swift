//
//  TeamMembersView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import SwiftUI

struct TeamUsersListView: View {
    var teamUsers: [User]
    var transactions: [Transaction]?

    var body: some View {
        List(teamUsers) { user in
            TeamUserRowView(
                user: user,
                transactions: transactions?.filter{ $0.userId == user.id }
            )
        }
    }
}

struct TeamUsersListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamUsersListView(teamUsers: MockUser.sampleUsers)
    }
}
