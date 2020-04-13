//
//  Dish.swift
//  02_Grid
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import Foundation
import SwiftUI
//Модель с уникальным ID
struct Dish: Identifiable {
    
    let id = UUID()
    let name: String
    let price: Double
    let imageURL: String
    
}

//Расширение с массивом обьектов
extension Dish {
    
    static func all() -> [Dish] {
        
        return [
            Dish(name: "Filet Mignon", price: 35, imageURL: "e1"),
            Dish(name: "Spagetti Meatballs", price: 12, imageURL: "e2"),
            Dish(name: "Spagetti Meatballs", price: 12, imageURL: "e2"),
            Dish(name: "Sushi", price: 15, imageURL: "a1"),
            Dish(name: "Chocolate Cake", price: 8, imageURL: "d1"),
            Dish(name: "Lemon Cake", price: 10, imageURL: "d2"),
            Dish(name: "Spagetti Meatballs", price: 12, imageURL: "e2")
        ]
        
    }
    
}
