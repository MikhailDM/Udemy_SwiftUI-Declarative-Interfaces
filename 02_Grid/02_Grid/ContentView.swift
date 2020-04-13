//
//  ContentView.swift
//  02_Grid
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //Массив со всеми обьектами
    let dishes = Dish.all()    
    
    var body: some View {
        //Обрезанный массив
        let chuckedDishes = dishes.chunked(into: 2)
        
        return List {
            //Ряды
            ForEach(0..<chuckedDishes.count) { index in
                HStack {
                    //Линии
                    ForEach(chuckedDishes[index]) { dish in
                        Image(dish.imageURL)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
