//
//  Report.swift
//  11_Graphics
//
//  Created by Михаил Дмитриев on 15.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import Foundation

//Модель доступная для перебора
struct Report: Hashable {
    let year: String
    let revenue: Double
}

extension Report {
    
    static func all() -> [Report] {
        return [
            Report(year: "2001", revenue: 1500),
            Report(year: "2002", revenue: 3500),
            Report(year: "2003", revenue: 8500)
        ]
    }
}
