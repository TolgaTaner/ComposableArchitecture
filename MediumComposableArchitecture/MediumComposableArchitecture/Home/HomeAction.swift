//
//  HomeAction.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 14.04.2025.
//

import Foundation
import ComposableArchitecture

enum Action {
    case onAppear
    case dataLoaded(Result<[Coin], APIError>)
}
