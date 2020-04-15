//
//  NSManagedObjectContext+Extensions.swift
//  HotCoffeeApp
//
//  Created by Mohammad Azam on 7/31/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit
import CoreData
//Расширение
extension NSManagedObjectContext {
    
    static var current: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }    
}
