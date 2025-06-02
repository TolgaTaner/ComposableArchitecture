//
//  HomeClient.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 25.02.2022.
//

import Foundation

final class HomeClient {
    
    var api: APIClient = {
        let configuration = URLSessionConfiguration.default
        return APIClient(configuration: configuration)
    }()
    
    func get(path: String,
             queryItems: [URLQueryItem]? = nil) async -> Result<HomeResponse, APIError> {
        let response = await api.send(Request.get(path: path, queryItems: queryItems))
        let decodedResponse = await response.decoding(BaseResponse<HomeResponse>.self)
        switch decodedResponse {
        case .success(let success):
            return .success(success.data)
        case .failure(let failure):
            return .failure(failure)
        }
    }
}
