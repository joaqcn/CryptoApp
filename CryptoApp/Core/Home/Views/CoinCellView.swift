//
//  CoinCellView.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/11/23.
//

import SwiftUI
import Kingfisher

struct CoinCellView: View {
    
    let coins:Coin
    
    var body: some View {
        
        
        HStack {
            
            // Mrketcap rank
            Text("\(coins.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundStyle(.gray)
            
            
            // Image
            KFImage(URL(string:coins.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            
            // Coin name
            VStack(alignment: .leading, spacing: 4) {
                Text(coins.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text(coins.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
                
            }
            .padding(.leading, 2)
            
            Spacer()
            // Coin price
            VStack(alignment: .trailing, spacing: 4) {
                Text(coins.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text(coins.priceChangePercentage24H.toPercent())
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(coins.priceChangePercentage24H > 0 ? .green : .red)
                
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//#Preview {
//  CoinCellView()
//}
