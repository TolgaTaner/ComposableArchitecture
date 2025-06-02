//
//  DataSource.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 14.04.2025.
//

import Foundation

enum Datasource<T: Decodable>: Equatable where T: Equatable {
    case awaiting
    case loading
    case success(_ list: [T])
    case failure(errorMessage: String)
    
    var list: [T]? {
        switch self {
        case .success(let list): return list
        default: return nil
        }
    }
    
    var errorMessage: String? {
        if case .failure(let message) = self { return message }
        return nil
    }
}
