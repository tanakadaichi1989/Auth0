//
//  HomeView.swift
//  Sample-App-with-Auth0
//
//  Created by 田中大地 on 2023/08/03.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var service: Auth0Service
    var body: some View {
        VStack {
            title
            logoutButton
        }
    }
    
    private var title: some View {
        Text("Home View")
            .font(.largeTitle)
            .fontWeight(.black)
    }
    
    private var logoutButton: some View {
        Button {
            logout()
        } label: {
            Text("Log out")
        }
        .buttonStyle(.borderedProminent)
    }
}


extension HomeView {
    private func logout() {
        service.logout { _ in false }
    }
}
