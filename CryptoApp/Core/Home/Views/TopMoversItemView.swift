//
//  TopMoversItemView.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/9/23.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading){
            // Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            //Coin info
            HStack(spacing: 2){
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                Text("$20,000.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            // Coin percentage change
            Text("+ 5.60%")
                .font(.title)
                .foregroundStyle(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 1.5))
        
    }
}

#Preview {
    TopMoversItemView()
}
