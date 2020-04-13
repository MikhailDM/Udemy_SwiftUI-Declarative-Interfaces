//
//  Weather.swift
//  09_API-Weather
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import Foundation

//MARK: - МОДЕЛЬ ВХОДНЫХ ДАННЫХ

struct WeatherResponse: Decodable {
    let main: Weather
 }

struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}
