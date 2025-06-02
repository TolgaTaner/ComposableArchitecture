//
//  HomeFeature.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 14.04.2025.
//

import ComposableArchitecture

extension HomeReducer {
    @ObservableState
    struct State: Equatable {
        var datasource: Datasource<Coin> = .awaiting
    }
}
