//
//  UserSettings.swift
//  08_Observable-Example
//
//  Created by Михаил Дмитриев on 13.04.2020.
//  Copyright © 2020 Mikhail Dmitriev. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserSettings: ObservableObject{
    
    @Published var score: Int = 0
}
