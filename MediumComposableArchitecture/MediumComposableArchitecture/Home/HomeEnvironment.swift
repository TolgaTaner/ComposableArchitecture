//
//  HomeEnvironment.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 2.06.2025.
//

import Foundation

struct HomeEnvironment {
    
    let homeClient: HomeClient
    
    init(homeClient: HomeClient) {
        self.homeClient = homeClient
    }
}
