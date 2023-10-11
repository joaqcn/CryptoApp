//
//  CoinCellView.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/11/23.
//

import SwiftUI

struct CoinCellView: View {
    let coin: Coin
    var body: some View {
        HStack {
            // Mrketcap rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundStyle(.gray)
            
            // Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            
            // Coin name
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
                
            }
            .padding(.leading, 2)
            
            Spacer()
            // Coin price
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(.red)
                
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//#Preview {
  //  CoinCellView()
//}
