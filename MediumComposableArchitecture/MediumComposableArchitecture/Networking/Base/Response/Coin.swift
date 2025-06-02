//
//  Coin.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 19.03.2025.
//

import Foundation

struct Coin: Model, Equatable, Hashable {
    
    init(uuid: String, symbol: String, name: String, color: String? = nil, iconURL: String, marketCap: String, price: String, listedAt: Int, tier: Int, change: String, rank: Int, sparkline: [String], lowVolume: Bool, coinrankingURL: String, the24HVolume: String, btcPrice: String) {
        
        self.uuid = uuid
        self.symbol = symbol
        self.name = name
        self.color = color
        self.iconURL = iconURL
        self.marketCap = marketCap
        self.price = price
        self.listedAt = listedAt
        self.tier = tier
        self.change = change
        self.rank = rank
        self.sparkline = sparkline
        self.lowVolume = lowVolume
        self.coinrankingURL = coinrankingURL
        self.the24HVolume = the24HVolume
        self.btcPrice = btcPrice
    }
    
    let uuid, symbol, name: String
    let color: String?
    let iconURL: String
    let marketCap, price: String
    let listedAt, tier: Int
    let change: String
    let rank: Int
    let sparkline: [String]
    let lowVolume: Bool
    let coinrankingURL: String
    let the24HVolume, btcPrice: String
   
    enum CodingKeys: String, CodingKey {
        case uuid, symbol, name, color
        case iconURL = "iconUrl"
        case marketCap, price, listedAt, tier, change, rank, sparkline, lowVolume
        case coinrankingURL = "coinrankingUrl"
        case the24HVolume = "24hVolume"
        case btcPrice
    }

}
