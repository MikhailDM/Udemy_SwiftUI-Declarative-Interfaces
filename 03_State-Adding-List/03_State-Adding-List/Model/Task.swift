//
//  Task.swift
//  03_State-Adding-List
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import Foundation

//Модель обьекта
struct Task: Identifiable {
    let id = UUID()
    let name: String
}
