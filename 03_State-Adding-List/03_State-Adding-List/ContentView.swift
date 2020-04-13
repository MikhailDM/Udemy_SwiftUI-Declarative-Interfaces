//
//  ContentView.swift
//  03_State-Adding-List
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //Обьявляем отслеживаемую переменную
    @State var tasks = [Task]()
    
    //Функция добавления обьектов
    private func addTask() {
        self.tasks.append(Task(name: "Wash The Car"))
    }
    
    var body: some View {
        
        List {
            Button(action: addTask) {
                Text("Add Task")
            }
            
            ForEach(tasks) { task in
                Text(task.name)
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
