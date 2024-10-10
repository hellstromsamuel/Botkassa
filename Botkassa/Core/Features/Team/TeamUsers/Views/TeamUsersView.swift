//
//  TeamMembersView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import SwiftUI

struct TeamUsersView: View {
    @StateObject var viewModel = TeamUsersViewModel()

    var body: some View {
        List(viewModel.teamUsers) { user in
            Text(user.name)
        }
        .onAppear {
            viewModel.loadTeamUsers()
        }
    }
}

struct TeamUsersView_Previews: PreviewProvider {
    static var previews: some View {
        TeamUsersView()
    }
}
