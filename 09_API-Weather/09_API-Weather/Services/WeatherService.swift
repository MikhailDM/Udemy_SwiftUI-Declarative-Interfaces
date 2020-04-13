//
//  WeatherService.swift
//  09_API-Weather
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import Foundation

class WeatherService {
    //Функция получения погоды
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=679151602cd4548fb4e552931568fa89&units=metric") else {
            completion(nil)
            return
        }
        //Сессия
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            //Decode JSON
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                completion(weather)
            } else {
                completion(nil)
            }
            
        }.resume()
    }
}
