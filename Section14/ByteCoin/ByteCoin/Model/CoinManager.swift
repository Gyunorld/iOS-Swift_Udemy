//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdatePrice(price: String, currency: String)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    var delegate: CoinManagerDelegate?
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "AC59A9F6-ED78-4DB8-A9DD-F45E69F82D76"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency:  String) {
        
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        // 1. URL 만들기
        if let url = URL(string: urlString) {
            // 2. URLSession 만들기
            let session = URLSession(configuration: .default)
            
            // 3. Session에 task 넘기기
            let task = session.dataTask(with: url) { (data, responese, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let bitcoinPrice = self.parseJSON(safeData) {
                        let priceString = String(format: "%.2f", bitcoinPrice)
                        self.delegate?.didUpdatePrice(price: priceString, currency: currency)
                    }
                }
            }
            
            // 4. 실행하기
            task.resume()
        }
    }
    
    
    // JSON parsing
    func parseJSON(_ data: Data) -> Double? {
        let decoder = JSONDecoder()
        do{
            let decodeData = try decoder.decode(CoinData.self, from: data)
            let lastPrice = decodeData.rate
            return lastPrice
            
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
        
    }
}
