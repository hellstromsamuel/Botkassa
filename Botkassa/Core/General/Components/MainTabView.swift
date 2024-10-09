//
//  MainTabView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)

            TeamView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Team")
                }
                .tag(2)

//            NewFeeView()
//                .tabItem {
//                    Image(systemName: "plus.circle")
//                    Text("New Fee")
//                }
//                .tag(3)

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

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
