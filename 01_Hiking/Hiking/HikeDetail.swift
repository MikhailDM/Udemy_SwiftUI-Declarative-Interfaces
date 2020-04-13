//
//  HikeDetail.swift
//  Hiking
//
//  Created by Mohammad Azam on 11/1/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

//MARK: - ОТОБРАЖЕНИЕ ОТДЕЛЬНОГО ОБЬЕКТА
import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        
        VStack {
            Image(hike.imageURL)
                .resizable()
                //Возвращение в нормальное состояние после увеличения
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                //Увеличение при нажатии
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Text(hike.name)
            Text(String(format: "%.2f",hike.miles))
        }
        //Заголовок NavigationBar
        //displayMode: .inline - подгоняет текст по размеру
        .navigationBarTitle(Text(hike.name), displayMode: .inline)  
    
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Angels Landing", imageURL: "tam", miles: 10.0))
    }
}
