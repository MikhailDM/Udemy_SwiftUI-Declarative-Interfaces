//
//  ContentView.swift
//  Transition
//
//  Created by Михаил Дмитриев on 11.05.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var secondName = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                
                TextField("Name", text: $name)
                    .padding()
                
                Spacer()
                
                TextField("Second Name", text: $secondName)
                    .padding()
                
                Spacer()
                
                NavigationLink(destination: SecondView(name: self.$name, secondName: self.$secondName)) {
                    Text("Go To Next View")
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
