//
//  TeamMembersView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import SwiftUI

struct TeamView: View {
    @StateObject var viewModel = TeamUsersViewModel()

    var body: some View {
        NavigationView {
            VStack {
                TeamUsersView()
            }.navigationTitle("Team")
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
