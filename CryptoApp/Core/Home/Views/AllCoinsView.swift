//
//  AllCoinsView.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/11/23.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack {
            Text("All Coins")
                .font(.headline)
            
            HStack {
                Text("Coin")
                
                Spacer()
                Text("Prices")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
        }
        
    }
}

#Preview {
    AllCoinsView()
}
