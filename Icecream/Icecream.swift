//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe": "Peanut Butter and Chocolate",
                                     "Tim": "Natural Vanilla",
                                     "Sophie": "Mexican Chocolate",
                                     "Deniz": "Natural Vanilla",
                                     "Tom": "Mexican Chocolate",
                                     "Jim": "Natural Vanilla",
                                     "Susan": "Cookies 'N' Cream"]
    
    
    
    // 2.
    
    func names(forFlavor: String) -> [String] {
        var ar: [String] = []
        
        for (name, value) in favoriteFlavorsOfIceCream {
            if forFlavor == value {
                ar.append(name)
            }
        }
        
        return ar
    }
    
    
    
    
    // 3.
    func count(forFlavor: String) -> Int {
        var ar: Int = 0
        
        for value in favoriteFlavorsOfIceCream.values {
            if forFlavor == value {
                ar += 1
            }
        }
        return ar
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson: String) -> String? {
        
        // If a given person doesn't doesn't exist, return nil.
        if let flavor = favoriteFlavorsOfIceCream[forPerson] {
            return flavor
        } else {
            return nil
        }
        
    }
    
   
    
    // 5.
   
    func replace(flavor: String, forPerson: String) -> Bool {
        
        if 	favoriteFlavorsOfIceCream[forPerson] != nil {
            if let upd = favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson) {
                print(upd)
                return true
            }
        }
        return false
    }
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) != nil {
            return true
        } else {
            return false
        }
        
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor: String) -> Bool {
        //        The function should return true if the person was added, or false if the person was already attending.
        
        if favoriteFlavorsOfIceCream[person] == nil {
            
            favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
            return true
        } 
        return false
        
    }
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var str: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        let total = favoriteFlavorsOfIceCream.count
        var counter = 0
        
        for name in allNames {
            if let iceCream = favoriteFlavorsOfIceCream[name] {
                str += ("\(name) likes \(iceCream)")
                if counter < total-1 {
                    str += "\n"
                }
                counter += 1
            }
            
        }
        
        return str
    }

    
    
    
    
    
    
    

}
