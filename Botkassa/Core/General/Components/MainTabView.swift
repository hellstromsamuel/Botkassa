//
//  MainTabView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        ZStack {
            // The main tab view content
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    .tag(1)

                TransactionsView()
                    .tabItem {
                        Image(systemName: "clock")
                        Text("History")
                    }
                    .tag(3)

                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                    .tag(4)
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
