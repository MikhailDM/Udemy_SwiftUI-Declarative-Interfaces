//
//  ContentView.swift
//  11_Graphics
//
//  Created by Михаил Дмитриев on 15.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BarGraph(reports: Report.all())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
