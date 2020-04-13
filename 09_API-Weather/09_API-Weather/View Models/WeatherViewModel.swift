//
//  WeatherViewModel.swift
//  09_API-Weather
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import Foundation
import Combine

//Создаем класс за которым можно наблюдать
class WeatherViewModel: ObservableObject {
    private var weatherService: WeatherService!
    
    //Доступная переменная класса
    @Published var weather = Weather()
    
    init() {
        self.weatherService = WeatherService()
    }
    
    //Вычисляемое свойство температуры
    var temperature: String {
        if let temp = self.weather.temp {
            return String(format: "%.0f", temp) + "ºC"
        } else {
            return ""
        }
    }
    
    //Вычисляемое свойство влажности
    var humidity: String {
        if let humidity = self.weather.humidity {
            return String(format: "%.0f", humidity)
        } else {
            return ""
        }
    }
    
    var cityName: String = ""
    
    //Функция поиска по имени города
    func search() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed){
            fetchWeather(by: city)
        }
    }
    
    //Создание модели погоды из полученных данных
    private func fetchWeather(by city: String) {
        self.weatherService.getWeather(city: city) { (weather) in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
                
            }
        }
    }
}
