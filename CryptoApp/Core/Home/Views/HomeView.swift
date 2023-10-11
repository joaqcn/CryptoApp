//
//  HomeView.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/9/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView
        {
            ScrollView(.vertical, showsIndicators: false){
                
                // Top movers
                TopMoversView()
                
                Divider()
                
                //All coins
                
                
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
