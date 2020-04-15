//
//  Stock.swift
//  StocksAppSwiftUI
//
//  Created by Mohammad Azam on 1/6/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import Foundation

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String 
}
