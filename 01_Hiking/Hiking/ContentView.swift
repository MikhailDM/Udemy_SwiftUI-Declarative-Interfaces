//
//  ContentView.swift
//  Hiking
//
//  Created by Mohammad Azam on 11/1/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //Массив обьектов
    let hikes = Hike.all()
    
    var body: some View {
        //NavigationView
        NavigationView {
            //Список из обьектов
            List(self.hikes, id: \.name) { hike in
                //Переход к экрану деталей и передаем в него текущий hike
                NavigationLink(destination: HikeDetail(hike: hike)) {
                    //Передаем обьект для настроки отображения
                    HikeCell(hike: hike)
                }
            }
            //Заголовок NavigationView
            .navigationBarTitle("Hikings")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: - ОТДЕЛЬНЫЕ НАСТРОЙКИ ЯЧЕЙКИ
struct HikeCell: View {
    //Константа получаемого обьекта
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f",hike.miles))
            }
        }
    }
}
