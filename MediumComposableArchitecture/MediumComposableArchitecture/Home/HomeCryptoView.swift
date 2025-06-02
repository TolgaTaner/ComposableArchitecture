//
//  HomeCryptoView.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 8.04.2025.
//

import SwiftUI

struct HomeCryptoView: View {
    
    private let coin: Coin
    
    init(coin: Coin) {
        self.coin = coin
    }
    
    var body: some View {
        HStack {
            VStack {
                HStack(spacing: 20) {
                    Image(systemName: "chevron.left")
                        .padding(.leading, 16)
                    VStack(alignment: .leading) {
                        Text(coin.name)
                        Text("-")
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(coin.price)
                        HStack {
                            Text(coin.price)
                            Text(coin.change)
                        }
                    }.padding(.trailing, 16)
                }
            }
        }
    }
}

#Preview {
    HomeCryptoView(coin: Coin(uuid: "", symbol: "", name: "", color: "", iconURL: "", marketCap: "", price: "", listedAt: 1, tier: 1, change: "", rank: 1, sparkline: [], lowVolume: true, coinrankingURL: "", the24HVolume: "", btcPrice: ""))
}
