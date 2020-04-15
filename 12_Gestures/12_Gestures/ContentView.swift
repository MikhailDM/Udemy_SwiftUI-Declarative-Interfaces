//
//  ContentView.swift
//  12_Gestures
//
//  Created by Михаил Дмитриев on 15.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var tapped = false
    @State private var carDragState: CGSize = CGSize.zero
    @State private var cardRotateState: Double = 0.0
    
    var body: some View {
        Card(tapped: self.tapped)
            .animation(.spring())
            .offset(y: self.carDragState.height)
            .rotationEffect(Angle(degrees: self.cardRotateState))
            //Поворот
            .gesture(RotationGesture()
                .onChanged({ (value) in
                    self.cardRotateState = value.degrees
                })
            )
            //Перемещение
            .gesture(DragGesture()
                .onChanged { (value) in
                    self.carDragState = value.translation
                }
                .onEnded{ (value) in
                    self.carDragState = CGSize.zero
                }
            )
            
            //Нажатие
            .gesture(TapGesture(count: 1)
                .onEnded({ () in
                    self.tapped.toggle()
                })
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
