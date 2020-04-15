//
//  Card.swift
//  12_Gestures
//
//  Created by Михаил Дмитриев on 15.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct Card: View {
    @State private var scale: CGFloat = 1
    
    let tapped: Bool
    
    var body: some View {
        VStack {
            Image("cat")
                .resizable()
                .scaleEffect(self.scale)
                .frame(width: 300, height: 300)
                //Magnitude Gesture
                .gesture(MagnificationGesture()
                    .onChanged({ (value) in
                        self.scale = value.magnitude
                    })
                    .onEnded({ (value) in
                        self.scale = 1
                    })
                
                )
            
            
            Text("TAP/DRAG/ZOOM ME")
                .font(.largeTitle)
                .foregroundColor(Color.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(self.tapped ? Color.orange : Color.purple)
        .cornerRadius(30)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tapped: false)
    }
}
