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
                        Text("Team")
                    }
                    .tag(1)

                FinesView()
                    .tabItem {
                        Image(systemName: "checklist")
                        Text("Fines")
                    }
                    .tag(2)
                
                Spacer()
                
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


            // Floating Action Button
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        print("Floating Action Button Tapped")
                    }) {
                        Image(systemName: "plus")
                            .font(.system(size: 40))
                            .frame(width: 60, height: 60)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(35)
                    }
                    .padding(.bottom, 5)
                    Spacer()
                }
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
