//
//  HomeReducer.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 14.04.2025.
//

import ComposableArchitecture

@Reducer
struct HomeReducer {
    
    private struct Constant {
        static let coinsPath = "X"
    }
    
    private let environment: HomeEnvironment
    
    init(environment: HomeEnvironment) {
        self.environment = environment
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .run { send in
                    let response = await environment.homeClient.get(path: Constant.coinsPath, queryItems: nil)
                    switch response {
                    case .success(let result):
                        await send(.dataLoaded(.success(result.coins)))
                    case .failure(let error):
                        await send(.dataLoaded(.failure(error)))
                    }
                }
            case let .dataLoaded(result):
                switch result {
                case .success(let data):
                    state.datasource = .success(data)
                case .failure(let error):
                    state.datasource = .failure(errorMessage: error.localizedDescription)
                }
                return .none
            }
        }   
    }
}


