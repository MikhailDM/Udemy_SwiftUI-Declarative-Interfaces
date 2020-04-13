//
//  FancyScoreView.swift
//  08_Observable-Example
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct FancyScoreView: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(userSettings.score)")
            .font(.title)
            Button(action: {
                self.userSettings.score += 1
            }) {
                Text("Increment Score")      
            }
            .background(Color.green)
        }
        .background(Color.orange)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView()
    }
}
