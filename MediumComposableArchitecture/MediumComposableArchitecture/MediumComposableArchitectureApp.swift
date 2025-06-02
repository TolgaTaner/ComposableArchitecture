//
//  MediumComposableArchitectureApp.swift
//  MediumComposableArchitecture
//
//  Created by Tolga Taner on 2.06.2025.
//

import SwiftUI
import ComposableArchitecture

@main
struct MediumComposableArchitectureApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(store: Store(initialState: HomeReducer.State()) { HomeReducer(environment: HomeEnvironment(homeClient: HomeClient())) } )
        }
    }
}
