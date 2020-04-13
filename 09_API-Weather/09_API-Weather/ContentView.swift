//
//  ContentView.swift
//  09_API-Weather
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //Ссылка на наблюдаемый обьект
    @ObservedObject var weatherVM: WeatherViewModel
    //Инициализатор
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        ZStack {
            Image("BG")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                Spacer()
                
                TextField("Enter city name", text: self.$weatherVM.cityName) {
                    self.weatherVM.search()
                }
                .font(.custom("Futura-Bold", size: 40))
                .padding()
                .fixedSize()
                
                Text(self.weatherVM.temperature)
                    .font(.custom("Futura", size: 40))
                
                Spacer()
            }
        }
        //.background(Image("BG").resizable())
        
        //.aspectRatio(contentMode: .fit)
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
