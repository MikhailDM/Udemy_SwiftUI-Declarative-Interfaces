//
//  ContentView.swift
//  08_Observable-Example
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack {
            Text("\(userSettings.score)")
                .font(.largeTitle)
            Button(action: {
                self.userSettings.score += 1
            }) {
                Text("Increment Score")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
