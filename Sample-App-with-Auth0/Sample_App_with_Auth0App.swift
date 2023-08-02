//
//  Sample_App_with_Auth0App.swift
//  Sample-App-with-Auth0
//
//  Created by 田中大地 on 2023/08/01.
//

import SwiftUI

@main
struct Sample_App_with_Auth0App: App {
    @StateObject var service: Auth0Service = Auth0Service()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(service)
        }
    }
}
