//
//  AllCoinsView.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/11/23.
//

import SwiftUI

struct AllCoinsView: View {
    
    @State var viewModel : HomeViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                
                Spacer()
                Text("Prices")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinCellView(coin: coin)
                    }
                }
            }
        }
    }
}

//#Preview {
//    AllCoinsView()
//}
