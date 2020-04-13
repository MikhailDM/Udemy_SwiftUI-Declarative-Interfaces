//
//  ContentView.swift
//  05_Bindings-Hello
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    
    func printName() {
        print(self.name)
    }
    
    var body: some View {
        VStack {
            Text(name)
            TextField("Enter the Name", text: $name)
            .padding(12)
            
            Button(action: {
                self.printName()
            }) {
                Text("Show Name")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
