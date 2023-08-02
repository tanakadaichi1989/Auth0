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
    
    init(){}
    
    public func login(completion: @escaping (Bool) -> Void) {
        print("login executed")
        isAuthenticated = true
    }
    
    public func logout(completion: @escaping (Bool) -> Void){
        print("logout executed")
        isAuthenticated = false
    }
}
