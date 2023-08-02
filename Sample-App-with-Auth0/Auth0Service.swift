//
//  Auth0Service.swift
//  Sample-App-with-Auth0
//
//  Created by 田中大地 on 2023/08/01.
//

import Foundation
import Auth0

class Auth0Service:ObservableObject {
    @Published var isAuthenticated = false

    public func login() {
        Auth0
            .webAuth()
            .start { result in
                switch result {
                case .success(let credentials):
                    print("Obtained credentials: \(credentials)")
                    self.isAuthenticated = true
                case .failure(let error):
                    print("Failure: \(error.localizedDescription)")
                }
            }
    }
    
    public func logout(){
        Auth0
            .webAuth()
            .clearSession { result in
                switch result {
                case .success:
                    print("Session cookie cleared")
                    self.isAuthenticated = false
                case .failure(let error):
                    print("Failed with: \(error.localizedDescription)")
                }
            }
    }
}
