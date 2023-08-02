//
//  ContentView.swift
//  Sample-App-with-Auth0
//
//  Created by 田中大地 on 2023/08/01.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var service: Auth0Service
    
    var body: some View {
        if service.isAuthenticated {
            HomeView()
        } else {
            LoginView()
        }
    }
}


extension ContentView {
    private func login(){
        service.login()
    }
    
    private func logout(){
        service.logout()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
