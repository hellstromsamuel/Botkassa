//
//  TeamMembersView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//


import SwiftUI

struct TeamMembersView: View {
    @StateObject var viewModel = TeamMembersViewModel()

    var body: some View {
        List(viewModel.teamMembers) { member in
            Text(member.name)
        }
        .onAppear {
            viewModel.loadTeamMembers()
        }
    }
}

struct TeamMembersView_Previews: PreviewProvider {
    static var previews: some View {
        TeamMembersView()
    }
}
