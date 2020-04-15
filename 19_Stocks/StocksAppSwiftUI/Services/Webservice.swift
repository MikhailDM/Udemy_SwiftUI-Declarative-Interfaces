//
//  Webservice.swift
//  StocksAppSwiftUI
//
//  Created by Mohammad Azam on 1/6/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import Foundation

class Webservice {
    
    func getTopNews(completion: @escaping (([Article]?) -> Void)) {
        
        guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/top-news") else {
                   fatalError("URL is not correct")
               }
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let articles = try? JSONDecoder().decode([Article].self, from: data)
            
            DispatchQueue.main.async {
                completion(articles)
            }
            
            
        }.resume()
        
        
    }
    
    func getStocks(completion: @escaping (([Stock]?) -> Void)) {
        
        guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/stocks") else {
            fatalError("URL is not correct")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            DispatchQueue.main.async {
                completion(stocks)
            }
            
        }.resume()
        
    }
    
}
