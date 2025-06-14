//
//  APIError.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 18.03.2025.
//

import Foundation

enum APIError: Error {

    case unknownResponse
    case networkError(Error)
    case requestError(Int)
    case serverError(Int)
    case decodingError(DecodingError)
    case unhandledResponse

}

extension APIError {

    static func error(from response: URLResponse?) -> APIError? {
        guard let http = response as? HTTPURLResponse
        else {
            return .unknownResponse
        }
        switch http.statusCode {
        case 200: return nil
        case 401: return .requestError(http.statusCode)
        case 404: return .requestError(http.statusCode)
        case 500...599: return .serverError(http.statusCode)
        default: return .unhandledResponse
        }
    }
}
