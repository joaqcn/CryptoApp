//
//  HomeView.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/9/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView
        {
            ScrollView(.vertical, showsIndicators: false){
                
                // Top movers
                TopMoversView()
                
                Divider()
                
                //All coins
                AllCoinsView(viewModel: viewModel)
                
                
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
