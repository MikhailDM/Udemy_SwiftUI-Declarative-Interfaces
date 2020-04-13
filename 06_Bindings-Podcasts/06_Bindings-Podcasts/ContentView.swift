//
//  ContentView.swift
//  06_Bindings-Podcasts
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let episode = Episode(name: "Name Episode", track: "WWDC 2019")
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            Text(episode.name)
                .font(.title)
                .foregroundColor(isPlaying ? .green : .black)
            
            
            Text(episode.track)
                .foregroundColor(.secondary)
            
            //Передаем ссылку на значение через Binding
            PlayButton(isPlaying: $isPlaying)
        }
    }
}


//Вид кнопки
struct PlayButton: View {
    //Ссылка на значение другого вида.
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
        }
        .padding(12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
