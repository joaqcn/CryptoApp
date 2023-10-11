//
//  TopMoversItemView.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/9/23.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin:Coin
    var body: some View {
        VStack(alignment: .leading){
            // Image
            KFImage(URL(string:coin.image))
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            //Coin info
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            // Coin percentage change
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.title)
                .foregroundStyle(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 1.5))
        
    }
}

//#Preview {
  //  TopMoversItemView()
//}
