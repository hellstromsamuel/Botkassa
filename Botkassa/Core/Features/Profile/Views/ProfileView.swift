//
//  ProfileView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//


import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel = ProfileViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("User Info")) {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text(viewModel.name)
                            .foregroundColor(.gray)
                    }

                    HStack {
                        Text("Email")
                        Spacer()
                        Text(viewModel.email)
                            .foregroundColor(.gray)
                    }
                }

                Section(header: Text("Preferences")) {
                    Toggle("Enable Notifications", isOn: $viewModel.notificationsEnabled)
                    Toggle("Dark Mode", isOn: $viewModel.isDarkMode)

                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.loadProfileData()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
