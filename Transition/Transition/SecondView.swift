//
//  SecondView.swift
//  Transition
//
//  Created by Михаил Дмитриев on 11.05.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var name: String
    @Binding var secondName: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(name)")
            Spacer()
            Text("\(secondName)")
            Spacer()
        }.onAppear() {
            //Тут метод сохранения пользователя в какой нибудь менеджер или CoreData
            let user = User(name: self.name, secondName: self.secondName)
            print(user)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(name: .constant("Test"),
                   secondName: .constant("Test Second"))
    }
}
