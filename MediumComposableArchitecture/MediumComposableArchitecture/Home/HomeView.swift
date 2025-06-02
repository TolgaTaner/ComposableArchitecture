//
//  CustomNavBar.swift
//  ComposableArchitecture
//
//  Created by Tolga Taner on 26.03.2025.
//

import SwiftUI
import ComposableArchitecture

struct HomeView: View {
    
    let store: StoreOf<HomeReducer>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                List {
                    Color(.systemGray6)
                        .frame(height: 5)
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color(.systemGray6))
                    
                    ForEach(viewStore.datasource.list ?? [], id: \.self) { item in
                        VStack(alignment: .leading) {
                            HomeCryptoView(coin: item)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color(.white))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                        .listRowBackground(Color(.systemGray6))
                    }
                }
                .listStyle(.plain)
            }
            .onAppear {
                viewStore.send(.onAppear)
            }
        }
    }
}
