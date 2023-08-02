//
//  LoginView.swift
//  Sample-App-with-Auth0
//
//  Created by 田中大地 on 2023/08/03.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var service: Auth0Service
    var body: some View {
        VStack {
            title
            loginButton
        }
    }
    
    private var title: some View {
        Text("Welcome")
            .font(.largeTitle)
            .fontWeight(.black)
    }
    
    private var loginButton: some View {
        Button {
            login()
        } label: {
            Text("Log in")
        }
        .buttonStyle(.borderedProminent)
    }
}


extension LoginView {
    private func login() {
        service.login { _ in false }
    }
}
