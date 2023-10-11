//
//  TopMoversView.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/9/23.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            
            ScrollView (.horizontal){
                HStack(spacing: 16) {
                    ForEach(viewModel.topCoins) {  coins in
                        TopMoversItemView(coin: coins)
                    }
                }
            }
        }
        .padding()
    }
}

///#Preview {
   // TopMoversView(viewModel: <#T##HomeViewModel#>())
//}
