//
//  Hike.swift
//  Hiking
//
//  Created by Mohammad Azam on 11/1/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

//MARK: - МОДЕЛЬ ДАННЫХ
import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double    
}

extension Hike {
    
    static func all() -> [Hike] {
        //Массив из обьектов
        return [
            Hike(name: "Salmonberry Trail", imageURL: "sal", miles: 6),
            Hike(name: "Tom, Dick, and Harry Mountain", imageURL: "tom", miles: 5.8),
            Hike(name: "Tamanawas Falls", imageURL: "tam", miles: 5)
        ]
        
    }
    
}
