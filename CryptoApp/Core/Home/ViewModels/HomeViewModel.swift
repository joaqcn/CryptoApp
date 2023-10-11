//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Joaquin Castrillon on 10/11/23.
//

import SwiftUI

class HomeViewModel : ObservableObject {
    
    @Published var coins = [Coin]()
    
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h&locale=en"
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            if let response  = response as? HTTPURLResponse {
                print("Response: \(response.statusCode)")
            }
            guard let data = data else {
                return
            }
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                }
            } catch let error {
                print("Fail: \(error)")
            }
        }.resume()
    }
}
